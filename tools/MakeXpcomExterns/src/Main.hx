package ;

import haxe.Utf8;
import htmlparser.HtmlDocument;
import htmlparser.HtmlNodeElement;
import htmlparser.HtmlNodeText;
import neko.Lib;
import sys.FileSystem;
import sys.io.File;
using ParserStringTools;
using xmltools.HtmlParserTools;
using stdlib.StringTools;
using Lambda;

class Main
{
	static public function main()
	{
		var nativeDir = "../../native";
		var outDir = "../../library/xpcom/mozilla";
		
		var klasses = [];
		
		for (file in FileSystem.readDirectory(nativeDir))
		{
			if (file.endsWith(".html"))
			{
				var klass = parseFile(nativeDir + "/" + file, outDir);
				if (klass != null)
				{
					klasses.push(klass);
				}
				else
				{
					Lib.println("ERROR in " + file + ": className not found.");
				}
			}
		}
		
		var klassMap = new Map<String, Klass>();
		for (klass in klasses) klassMap.set(klass.name, klass);
		
		for (klass in klasses)
		{
			if (klass.inheritsFrom != null && klass.inheritsFrom != "")
			{
				var parent = klassMap.get(klass.inheritsFrom);
				if (parent != null)
				{
					klass.attributes = klass.attributes.filter(function(attr)
					{
						return !parent.attributes.exists(function(e) return e.name == attr.name);
					});
					
					klass.methods = klass.methods.filter(function(method)
					{
						return !parent.methods.exists(function(e) return e.name == method.name);
					});
				}
			}
		}
		
		FileSystem.createDirectory(outDir);
		for (klass in klasses)
		{
			var isInterface = [ "nsI", "imgI", "inI", "jsdI", "mozI", "I", "amI", "nsPI" ].exists(function(prefix) return klass.name.startsWith(prefix) && ~/[A-Z]/.match(klass.name.charAt(prefix.length)));
			
			if (isInterface)
			{
				File.saveContent(outDir + "/interfaces/" + klass.name.capitalize() + ".hx", klass.toString
				(
					"xpcom.mozilla.interfaces",
					[ "xpcom.types.*", "xpcom.mozilla.objects.*" ],
					"Components.interfaces"
				));
			}
			else
			{
				File.saveContent(outDir + "/objects/" + klass.name.capitalize() + ".hx", klass.toString
				(
					"xpcom.mozilla.objects",
					[ "xpcom.types.*" ]
				));
			}
		}
	}
	
	static function parseFile(path:String, outDir:String) : Klass
	{
		//Lib.print("Parsing " + path + ": ");
		
		var text = File.getContent(path).replace("\r\n", "\n").replace("\r", "\n");
		text = text.replace(String.fromCharCode(0xC2) + String.fromCharCode(0xA0), " ");
		text = ~/<script(?:\n|.)*?<\/script>/ig.replace(text, "");
		text = ~/[<][!]--(?:\n|.)*?--[>]/ig.replace(text, "");
		text = fixLi(text);
		text = fixSelectOptionSelected(text);
		text = fixObsolete(text);
		text = fixCodeCloseOpen(text);
		
		var doc : HtmlDocument;
		try doc = new HtmlDocument(text) catch (e:Dynamic)
		{
			Lib.println("ERROR in " + path + ": parsing fail - " + e);
			return null;
		}
		
		fixCodeNesting(doc);
		
		return new MdnParser().parse(doc);
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
		var re = ~/(<option[^>]+selected)(\s*[^=])/ig;
		return re.map(text, function(_)
		{
			return re.matched(1) + "=\"selected\"" + re.matched(2);
		});
	}
	
	static function fixObsolete(s:String) : String
	{
		var re = ~/\s*(?:<\/code><code>)?(<span\s+class="[^"]*obsolete[^>]*>Obsolete\s+since\s+Gecko\s+\d+(?:[.]\d+)?\s*<\/span>)(?:<\/code>\s*<code>)?\s*[)];\s*<\/code>/ig;
		return re.map(s, function(_)
		{
			return ');</code>' + re.matched(1);
		});
	}
	
	static function fixCodeCloseOpen(s:String) : String
	{
		return s.replace("</code><code>", "");
	}
	
	static function fixCodeNesting(doc:HtmlNodeElement)
	{
		if (doc.parent != null && doc.name == "code" && doc.children.foreach(function(e) return e.name == "code"))
		{
			doc.parent.replaceChildWithInner(doc, doc);
		}
		for (child in doc.children) fixCodeNesting(child);
	}
}
