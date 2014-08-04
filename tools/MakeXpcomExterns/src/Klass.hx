package ;

using ParserStringTools;

class Klass
{
	public var name : String;
	
	var inheritsFrom : String;
	var attributes : Array<Attribute>;
	var methods : Array<Method>;
	
	public function new(name:String, inheritsFrom:String, attributes:Array<Attribute>, methods:Array<Method>)
	{
		this.name = name;
		this.inheritsFrom = inheritsFrom;
		this.attributes = attributes;
		this.methods = methods;
	}
	
	public function toString() : String
	{
		var r = 
		[
			"package mozilla.xpcom;",
			"",
			"import mozilla.xpcom.types.*;",
			"",
			"@:native(\"" + name+"\") extern class " + name.capitalize() + (inheritsFrom != null ? " extends " + inheritsFrom.capitalize() : ""),
			"{"
		].join("\n") + "\n";
		
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