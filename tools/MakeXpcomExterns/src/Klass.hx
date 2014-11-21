using Lambda;
using StringParserTools;

class Klass
{
	public var name : String;
	public var inheritsFrom : String;
	
	public var constants : Array<Constant>;
	public var attributes : Array<Attribute>;
	public var methods : Array<Method>;
	
	public var implementedBy : Array<Implement>;
	
	public function new(name:String, inheritsFrom:String, constants:Array<Constant>, attributes:Array<Attribute>, methods:Array<Method>, implementedBy:Array<Implement>)
	{
		this.name = name;
		this.inheritsFrom = inheritsFrom;
		this.constants = constants;
		this.attributes = attributes;
		this.methods = methods;
		this.implementedBy = implementedBy;
	}
	
	public function toString(pack:String, imports:Array<String>, nativePack="") : String
	{
		var r = "";
		
		r += "package " + pack + ";\n\n";
		
		r += imports.map(function(s) return "import " + s + ";\n").join("");
		
		if (imports.length > 0) r += "\n";
		
		r += "@:native(\"" + (nativePack != "" ? nativePack + "." : "") + name + "\") extern class " + name.capitalize() + (inheritsFrom != null ? " extends " + inheritsFrom.capitalize() : "") + "\n{\n";
		
		fixImplements();
		for (implement in implementedBy)
		{
			var constructorName = implement.type == "instance" ? "createInstance" : "getService";
			if (methods.count(function(m) return m.name == "init") != 1)
			{
				r += "\tpublic static inline function " + constructorName + "() : " + name.capitalize() + "\n";
				r += "\t{\n";
				r += "\t\treturn xpcom.Components.classes[cast \"" + implement.res + "\"]." + constructorName + "(" + name.capitalize() + ");\n";
				r += "\t}\n";
			}
			else
			{
				var init = methods.filter(function(m) return m.name == "init")[0];
				r += "\tpublic static inline function " + constructorName + "(" + init.params.map(Method.methodParamToString).join(", ") + ") : " + name.capitalize() + "\n";
				r += "\t{\n";
				r += "\t\tvar r : " + name.capitalize() + " = xpcom.Components.classes[cast \"" + implement.res + "\"]." + constructorName + "(" + name.capitalize() + ");\n";
				r += "\t\tr.init(" + init.params.map(function(p) return p.name).join(", ") + ");\n";
				r += "\t\treturn r;\n";
				r += "\t}\n";
			}
		}
		
		if (implementedBy.length > 0 && constants.length + attributes.length + methods.length > 0) r += "\t\n";
		
		for (constant in constants)
		{
			r += constant.toString();
		}
		
		if (constants.length > 0 && attributes.length + methods.length > 0) r += "\t\n";
		
		for (attr in attributes)
		{
			r += attr.toString();
		}
		
		if (attributes.length > 0 && methods.length > 0) r += "\t\n";
		
		for (i in 0...methods.length)
		{
			r += methods[i].toString(methods[i + 1]);
		}
		
		r += "}\n";
		
		return r;
	}
	
	function fixImplements()
	{
		implementedBy = implementedBy.concat(switch (name)
		{
			case "nsIFileInputStream": [ { res:"@mozilla.org/network/file-input-stream;1", type:"instance" } ];
			case "nsIFileOutputStream": [ { res:"@mozilla.org/network/file-output-stream;1", type:"instance" } ];
			case "nsIFile": [ { res:"@mozilla.org/file/local;1", type:"instance" } ];
			case "nsIClipboardHelper": [ { res:"@mozilla.org/widget/clipboardhelper;1", type:"service" } ];
			case _: [];
		});
	}
}