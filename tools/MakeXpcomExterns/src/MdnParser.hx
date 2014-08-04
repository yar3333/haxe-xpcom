package ;

import htmlparser.HtmlDocument;
import htmlparser.HtmlNodeText;
import neko.Lib;
using xmltools.HtmlParserTools;
using Lambda;
using stdlib.StringTools;
using ParserStringTools;

class MdnParser
{
	public function new() {}
	
	public function parse(doc:HtmlDocument) : Klass
	{
		var classNameNode = doc.findOne("#wiki-document-head>h1");
		if (classNameNode != null)
		{
			var className = classNameNode.innerHTML;
			
			//Lib.println("className = " + className);
			
			var inheritsFrom : String = null;
			var article = doc.findOne("#wikiArticle>div");
			if (article != null)
			{
				var articleDivs = article.find(">div");
				if (articleDivs.length > 0)
				{
					if (articleDivs[articleDivs.length - 1].nodes.exists(function(node) return Std.is(node, HtmlNodeText) && cast(node, HtmlNodeText).text.toLowerCase().indexOf("inherits from") >= 0))
					{
						inheritsFrom = articleDivs[articleDivs.length - 1].findOne(">code").innerHTML.stripTags();
					}
				}
				else
				{
					Lib.println("ERROR in " + className + ": article divs not found. inheritsFrom may be wrong.");
				}
			}
			else
			{
				Lib.println("warng in " + className + ": article not found. inheritsFrom may be wrong.");
			}
			
			if (inheritsFrom == className)
			{
				Lib.println("warng in " + className + ": inheritsFrom equal to className.");
				inheritsFrom = null;
			}
			
			return new Klass(className, inheritsFrom, parseAttributes(doc), parseMethods(doc));
		}
		
		return null;
	}
	
	function parseAttributes(doc:HtmlDocument) : Array<Attribute>
	{
		var r = [];
		
		var attributesOverview = doc.findOne("#Attributes");
		if (attributesOverview != null)
		{
			var table = attributesOverview.getNextSiblingElement();
			var rows = table.find(">tbody>tr").slice(1);
			for (row in rows)
			{
				var td = row.find(">td");
				
				var name = td[0].innerHTML.stripTags().htmlUnescape();
				
				var isUnimplemented = false;
				var reUnimplemented = ~/\s*Unimplemented\s*$/i;
				if (reUnimplemented.match(name))
				{
					name = name.substr(0, name.length - reUnimplemented.matchedPos().len);
					isUnimplemented = true;
				}
				
				var metaObsolete = "";
				var reObsolete = ~/Obsolete\s+since\s+Gecko\s+\d+(?:[.]\d+)?$/;
				if (reObsolete.match(name))
				{
					name = name.substr(0, name.length - reObsolete.matchedPos().len);
					metaObsolete = reObsolete.matched(0).trim();
				}
				
				var type = (td[1].findOne(">code") != null ? td[1].findOne(">code").innerHTML : td[1].innerHTML).stripTags().htmlUnescape();
				
				var metaNew = "";
				var reNew = ~/\s*\[\s*(new\s+in\s+\d*(?:[.]\d+)?)\]\s*$/i;
				if (reNew.match(type))
				{
					type = type.substr(0, type.length - reNew.matchedPos().len);
					metaNew = reNew.matched(1).trim().capitalize();
				}
				
				var desc = td[2].innerHTML.htmlUnescape();
				desc = desc.stripTags();
				desc = ~/\n[ \t]*\n/g.replace(desc, "\n");
				desc = ~/\n[ \t]+/g.replace(desc, "\n");
				desc = desc.trim();
				
				//Lib.println(" attribute: " + name + " / " + type + " / description =\n" + desc);
				
				r.push(new Attribute(type, name, desc, { metaObsolete:metaObsolete, metaNew:metaNew, isUnimplemented:isUnimplemented } ));
			}
		}
		else
		{
			//Lib.println("warng in " + path + ": attributesOverview not found.");
		}
		
		return r;
	}
	
	function parseMethods(doc:HtmlDocument) : Array<Method>
	{
		var r = [];
		
		var methodsOverview = doc.findOne("#Method_overview");
		if (methodsOverview != null)
		{
			var table = methodsOverview.getNextSiblingElement();
			
			var methods = new Array<{ name:String, params:Array<MethodParam>, metas:MethodMetas, type:String }>();
			
			for (item in table.find(">tbody>tr>td>code"))
			{
				var method = item.innerHTML;
				method = method.stripTags().htmlUnescape();
				method = method.trim();
				method = method.rtrim("; ");
				
				if (method == "") continue;
				
				method = fixMethodComments(method);
				
				var metas : MethodMetas =
				{
					isPropGet: false,
					isNoScript: false,
					isNotXpcom: false,
					isConst: false,
					isImplicitJsContext: false,
					isObsolete: false,
					isNoStdCall: false
				};
				
				var reObsolete = ~/Obsolete\s+since\s+Gecko\s+\d+(?:[.]\d+)?$/;
				if (reObsolete.match(method))
				{
					method = method.substr(0, method.length - reObsolete.matchedPos().len);
					metas.isObsolete = true;
				}
				
				if (method.startsWith("["))
				{
					var i = method.indexOf("]");
					for (meta in method.substr(1, i - 1).parseCSV())
					{
						switch (meta)
						{
							case "propget": metas.isPropGet = true;
							case "noscript": metas.isNoScript = true;
							case "notxpcom": metas.isNotXpcom = true;
							case "const": metas.isConst = true;
							case "implicit_jscontext": metas.isImplicitJsContext = true;
							case "nostdcall": metas.isNoStdCall = true;
							case _: Lib.println("warng: unknow method meta " + meta);
						}
					}
					method = method.substr(i + 1).trim();
				}
				
				//              1=type                                   2=name             3=paramsStr
				var re = ~/^([_a-z][_a-z0-9]*(?:\s+[_a-z][_a-z0-9]*)?(?:\s+[_a-z][_a-z0-9]*)?)\s+([_a-z][_a-z0-9]*)[(](.*)[)]$/i;
				if (re.match(method))
				{
					var paramsStr = re.matched(3).parseCSV().filter(function(s) return s != "");
					
					var params = paramsStr.map(function(s)
					{
						var metas : MethodParamMetas =
						{
							isOptional: false,
							isOut: false,
							isIn: false,
							isRetVal: false,
							isConst: false,
							isArray: false,
							isEnumType: false,
							isShared: false
						};
						
						if (s.endsWith(" Optional"))
						{
							s = s.substr(0, s.length - " Optional".length);
							metas.isOptional = true;
						}
						
						if (s.startsWith("["))
						{
							var i = s.indexOf("]");
							for (meta in s.substr(1, i - 1).parseCSV())
							{
								if (meta.startsWith("size_is(")) continue;
								if (meta.startsWith("size_is (")) continue;
								if (meta.startsWith("length_is(")) continue;
								if (meta.startsWith("length_is (")) continue;
								if (meta.startsWith("iid_is(")) continue;
								if (meta.startsWith("iid_is (")) continue;
								
								switch (meta)
								{
									case "optional": metas.isOptional = true;
									case "out": metas.isOut = true;
									case "in": metas.isIn = true;
									case "retval": metas.isRetVal = true;
									case "const": metas.isConst = true;
									case "array": metas.isArray = true;
									case "shared": metas.isShared = true;
									case _: Lib.println("warng: unknow param meta " + meta);
								}
							}
							s = s.substr(i + 1).trim();
						}
						
						if (s.startsWith("in "))
						{
							s = s.substr("in ".length).trim();
							metas.isIn = true;
						}
						else
						if (s.startsWith("out "))
						{
							s = s.substr("out ".length).trim();
							metas.isOut = true;
						}
						else
						if (s.startsWith("inout"))
						{
							s = s.substr("inout".length).trim();
							metas.isIn = true;
							metas.isOut = true;
						}
						
						
						if (s.startsWith("enum "))
						{
							s = s.substr("enum ".length).trim();
							metas.isEnumType = true;
						}
						
						var re = ~/^([_a-z][_a-z0-9]*(?:\s+[_a-z][_a-z0-9]*)?(?:\s+[_a-z][_a-z0-9]*)?)\s+([_a-z][_a-z0-9]*)$/i;
						if (re.match(s))
						{
							return
							{
								name: re.matched(2),
								type: Types.convert(re.matched(1)),
								metas: metas
							};
						}
						else
						{
							Lib.println("warng: cannot parse param - " + s + "\nmethod: " + method);
							return null;
						}
					});
					
					methods.push({ name:re.matched(2), params:params, type:Types.convert(re.matched(1)), metas:metas });
				}
				else
				{
					Lib.println("warng: cannot parse method - " + method);
				}
			}
			
			methods.sort(function(a, b) return Reflect.compare(a.name, b.name));
			for (i in 0...methods.length)
			{
			}
			

		}
		else
		{
			//Lib.println("warng in " + path + ": methodsOverview not found.");
		}
		
		return r;
	}
	
	function fixMethodComments(method:String) : String
	{
		/* [optional] in jsval v1, [optional] in jsval v2, ... */
		var re = ~/\/[*]\s*(\[optional\][^,\/]+(?:,\s*\[optional\][^,\/]+)*),\s*[.][.][.]\s*[*]\//i;
		return re.map(method, function(_) return ", " + re.matched(1));
	}
}