package ;

using Lambda;
using ParserStringTools;

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
		
		for (implement in implementedBy)
		{
			if (implement.type == "instance")
			{
				r += "\tpublic static inline function createInstance() : " + name.capitalize() 
					+ " return xpcom.Components.Constructor("
						+ "\"" + implement.res + "\""
						+ ", xpcom.Components.interfaces." + name
						+ (methods.exists(function(e) return e.name=="init" && e.params.length==0) ? ", \"init\"" : "")
					+ ");\n";
			}
			else
			{
				r += "\tpublic static inline function getService() : " + name.capitalize()
					+ " return xpcom.Components.classes[cast \"" + implement.res + "\"]"
					+ ".getService(xpcom.Components.interfaces." + name + ");\n";
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
}