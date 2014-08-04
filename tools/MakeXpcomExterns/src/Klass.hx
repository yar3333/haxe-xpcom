package ;

using Lambda;
using ParserStringTools;

class Klass
{
	public var name : String;
	public var inheritsFrom : String;
	public var attributes : Array<Attribute>;
	public var methods : Array<Method>;
	public var implementedBy : Array<String>;
	
	public function new(name:String, inheritsFrom:String, attributes:Array<Attribute>, methods:Array<Method>, implementedBy:Array<String>)
	{
		this.name = name;
		this.inheritsFrom = inheritsFrom;
		this.attributes = attributes;
		this.methods = methods;
		this.implementedBy = implementedBy;
	}
	
	public function toString(pack:String, imports:Array<String>) : String
	{
		var r = "";
		
		r += "package " + pack + ";\n\n";
		r += imports.map(function(s) return "import " + s + ";\n").join("");
		
		if (imports.length > 0) r += "\n";
		
		r += "@:native(\"" + name+"\") extern class " + name.capitalize() + (inheritsFrom != null ? " extends " + inheritsFrom.capitalize() : "") + "\n{\n";
		
		for (implement in implementedBy)
		{
			r += "\tstatic function create() : " + name.capitalize() + " xpcom.Components.Constructor\n";
		}
		
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