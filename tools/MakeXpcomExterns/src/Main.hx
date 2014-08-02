package ;

import htmlparser.HtmlDocument;
import htmlparser.HtmlNodeElement;
import htmlparser.HtmlNodeText;
import neko.Lib;
import sys.FileSystem;
import sys.io.File;
using xmltools.HtmlParserTools;
using stdlib.StringTools;
using Lambda;

class Main
{
	static public function main()
	{
		var nativeDir = "../../native";
		var outDir = "../../library/mozilla/xpcom";
		
		FileSystem.createDirectory(outDir);
		
		for (file in FileSystem.readDirectory(nativeDir))
		{
			if (file.endsWith(".html"))
			{
				processFile(nativeDir + "/" + file, outDir);
			}
		}
	}
	
	static function processFile(path:String, outDir:String)
	{
		//Lib.print("Parsing " + path + ": ");
		
		var text = File.getContent(path).replace("\r\n", "\n").replace("\r", "\n");
		text = ~/<script(?:\n|.)*?<\/script>/ig.replace(text, "");
		text = ~/[<][!]--(?:\n|.)*?--[>]/ig.replace(text, "");
		text = fixLi(text);
		text = fixSelectOptionSelected(text);
		
		var doc : HtmlDocument;
		try doc = new HtmlDocument(text) catch (e:Dynamic)
		{
			Lib.println("ERROR in " + path + ": parsing fail - " + e);
			return;
		}
		
		fixCode(doc);
		
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
					Lib.println("ERROR in " + path + ": article divs not found. inheritsFrom may be wrong.");
				}
			}
			else
			{
				Lib.println("warng in " + path + ": article not found. inheritsFrom may be wrong.");
			}
			
			//Lib.println("inheritsFrom = " + inheritsFrom);
			
			var outLines =
			[
				"package mozilla.xpcom;",
				"",
				"@:native(\"" + className+"\") extern class " + capitalize(className) + (inheritsFrom != null ? " extends " + capitalize(inheritsFrom) : ""),
				"{"
			];
			
			var attrCount = 0;
			var attributesOverview = doc.findOne("#Attributes");
			if (attributesOverview != null)
			{
				var table = attributesOverview.getNextSiblingElement();
				var rows = table.find(">tbody>tr").slice(1);
				for (row in rows)
				{
					var td = row.find(">td");
					
					var name = td[0].innerHTML;
					var type = td[1].findOne(">code") != null ? td[1].findOne(">code").innerHTML.stripTags() : td[1].innerHTML.stripTags();
					var desc = td[2].innerHTML;
					desc = desc.stripTags();
					desc = ~/\n[ \t]*\n/g.replace(desc, "\n");
					desc = ~/\n[ \t]+/g.replace(desc, "\n");
					desc = desc.trim();
					
					//Lib.println(" attribute: " + name + " / " + type + " / description =\n" + desc);
					outLines.push("\tvar " + name + " : " + getType(type) + ";");
					
					attrCount++;
				}
			}
			else
			{
				//Lib.println("warng in " + path + ": attributesOverview not found.");
			}
			
			var methodsOverview = doc.findOne("#Method_overview");
			if (methodsOverview != null)
			{
				var blankLineAdded = false;
				var table = methodsOverview.getNextSiblingElement();
				for (item in table.find(">tbody>tr>td>code"))
				{
					var method = item.innerHTML;
					method = method.stripTags();
					method = method.trim();
					method = method.rtrim("; ");
					//Lib.println("    method: " + method);
					if (attrCount > 0 && !blankLineAdded) { outLines.push(""); blankLineAdded = true; }
					
					method = ~/\bunsigned\s+long\b/.replace(method, "ulong");
					
					var isPropGet = false;
					if (method.startsWith("[propget]"))
					{
						isPropGet = true;
						method = method.substr("[propget]".length).trim();
					}
					
					//              1=type               2=name             3=params
					var re = ~/^([_a-z][_a-z0-9]*)\s+([_a-z][_a-z0-9]*)[(]([^)]*)[)]$/i;
					if (re.match(method))
					{
						var params = parseCSV(re.matched(3));
						
						var paramsData = params.map(function(s)
						{
							var isOpt = false;
							if (s.startsWith("[optional]"))
							{
								s = s.substr("[optional]".length).trim();
							}
							
							var isOut = false;
							if (s.startsWith("[in]"))
							{
								s = s.substr("[in]".length).trim();
							}
							else
							if (s.startsWith("in "))
							{
								s = s.substr("in ".length).trim();
							}
							else
							if (s.startsWith("[out]"))
							{
								s = s.substr("[out]".length).trim();
								isOut = true;
							}
							else
							if (s.startsWith("out "))
							{
								s = s.substr("out ".length).trim();
								isOut = true;
							}
							else
							if (s.startsWith("[out,retval]"))
							{
								s = s.substr("[out,retval]".length).trim();
								isOut = true;
							}
							
							var isEnumType = false;
							if (s.startsWith("enum "))
							{
								s = s.substr("enum ".length).trim();
								isEnumType = true;
							}
							
							return
							{
								isOpt:isOpt,
								isOut:isOut,
								name:s
							};
						});
						
						outLines.push("\tfunction " + re.matched(2) + "(" + paramsData.map(function(p) return p.name).join(",") + ")" + " : " + getType(re.matched(1)) + ";");
					}
					else
					{
						Lib.println("warng in " + path + ": cannot parse method - " + method);
					}
				}
			}
			else
			{
				//Lib.println("warng in " + path + ": methodsOverview not found.");
			}
			
			outLines = outLines.concat
			([
				"}"
			]);
			
			File.saveContent(outDir + "/" + capitalize(className) + ".hx", outLines.join("\n"));
			
		}
		else
		{
			Lib.println("ERROR in " + path + ": className not found.");
		}
	}
	
	static function fixLi(text:String) : String
	{
		var re = ~/<li>((?:\n|.)*?)<\/([a-z0-9-_]+)>(?:\n|\s)*(<li>|<\/ol>|<\/ul>)/ig;
		
		var r = new StringBuf();
		
		var i = 0;
		while (i < text.length && re.matchSub(text, i))
		{
			var pos = re.matchedPos().pos;
			if (re.matched(2) == "li")
			{
				r.addSub(text, i, pos - i + 1);
				i = pos + 1;
			}
			else
			{
				r.addSub(text, i, re.matchedPos().pos - i);
				r.add("<li>" + re.matched(1) + "</" + re.matched(2) + "></li>");
				i = pos + re.matchedPos().len - re.matched(3).length;
			}
		}
		
		if (i < text.length)
		{
			r.addSub(text, i, text.length - i);
		}
		
		return r.toString();
	}
	
	static function fixSelectOptionSelected(text:String) : String
	{
		var re = ~/(<option[^>]+selected)(\s*[^=])/i;
		return re.map(text, function(_)
		{
			return re.matched(1) + "=\"selected\"" + re.matched(2);
		});
	}
	
	static function fixCode(doc:HtmlNodeElement)
	{
		if (doc.parent != null && doc.name == "code" && doc.children.foreach(function(e) return e.name == "code"))
		{
			doc.parent.replaceChildWithInner(doc, doc);
		}
		for (child in doc.children) fixCode(child);
	}
	
	static function capitalize(s:String) : String
	{
		return s.charAt(0).toUpperCase() + s.substr(1);
	}
	
	static function getType(type:String) : String
	{
		switch (type)
		{
			case "boolean": return "Bool";
			case "void": return "Void";
			case "AString": return "String";
			case "long": return "Int";
			case "ulong": return "Int";
			case "HRESULT": return "Int";
			case "HWND": return "Int";
			case _: return type;
		}
	}
	
	static function parseCSV(value:String) : Array<String>
	{
		var elems = [];
		var parCounter = 0;
		var lastCommaIndex = -1;
		for (i in 0...value.length)
		{
			var c = value.charAt(i);
			if (c == "(" || c == "[" || c == "{") parCounter++;
			else
			if (c == ")" || c == "]" || c == "}") parCounter--;
			else
			if (c == "," && parCounter == 0)
			{
				elems.push(value.substring(lastCommaIndex + 1, i).trim());
				lastCommaIndex = i;
			}
		}
		elems.push(value.substring(lastCommaIndex + 1, value.length).trim());
		return elems;
	}
}
