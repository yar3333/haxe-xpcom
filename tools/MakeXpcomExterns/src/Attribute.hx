package ;

class Attribute
{
	var type : String;
	var name : String;
	var desc : String;
	var metas : AttributeMetas;
	
	public function new(type:String, name:String, desc:String, metas:AttributeMetas)
	{
		this.type = type;
		this.name = name;
		this.desc = desc;
		this.metas = metas;
	}
	
	public function toString() : String
	{
		var r = "";
		if (desc != null && desc != "" || metas.metaObsolete != "" || metas.metaNew != "" || metas.isUnimplemented)
		{
			r += "\t/**\n";
			if (desc!= null && desc != "")
			{
				r += desc.split("\n").map(function(s) return "\t * " + s + "\n").join("");
			}
			if (metas.metaObsolete != "") r += "\t * " + metas.metaObsolete + "\n";
			if (metas.metaNew != "")      r += "\t * " + metas.metaNew + "\n";
			if (metas.isUnimplemented)    r += "\t * Unimplemented.\n";
			r += "\t */\n";
		}
		r += "\tvar " + name + " : " + Types.convert(type) + ";\n";
		return r;
	}
}