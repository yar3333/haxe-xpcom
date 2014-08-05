package ;

using Lambda;

class Method
{
	public var type : String;
	public var name : String;
	public var params : Array<MethodParam>;
	public var metas : MethodMetas;
	
	public function new(type:String, name:String, params:Array<MethodParam>, metas:MethodMetas)
	{
		this.type = type;
		this.name = name;
		this.params = params;
		this.metas = metas;
	}
	
	public function toString(next:Method) : String
	{
		var r = "";
		
		if (next != null && name == next.name)
		{
			// override
			if (
				params.map(methodParamToString).join(", ") != next.params.map(methodParamToString).join(", ") 
			 || type != next.type
			)
			{
				r += "\t@:overload(function(" + params.map(methodParamToString).join(", ") + ") : " + type + " {})\n";
			}
		}
		else
		{
			if (![ "break" ].has(name))
			{
				r += "\tfunction " + name + "(" + params.map(methodParamToString).join(", ") + ")" + " : " + type + ";\n";
			}
			else
			{
				r += "\t//function " + name + "(" + params.map(methodParamToString).join(", ") + ")" + " : " + type + ";\n";
			}
		}
		
		return r;
	}
	
	function methodParamToString(p:MethodParam) : String
	{
		return p != null
			? (p.metas.isOptional ? "?" : "") 
				+ (p.name != "var" ? p.name : "_" + p.name) + ":" + (p.metas.isArray ? "Array<" + p.type + ">" : p.type)
			: "???";
	}
}