package ;

using StringTools;
using ParserStringTools;

class Types
{
	public static function convert(type:String) : String
	{
		type = type.trim();
		
		if (type.endsWith(" array"))
		{
			return "Array<" + Types.convert(type.substr(0, type.length - " array".length)) + ">";
		}
		
		switch (type)
		{
			case "boolean": return "Bool";
			case "double": return "Float";
			case "unsigned long": return "ULong";
			case "unsigned long long": return "ULongLong";
			case "unsigned int": return "UInt";
			case "unsigned short": return "UShort";
			case "long long": return "LongLong";
			case "ACString (US-ASCII)": return "ACString";
		}
		
		return type.capitalize();
	}
}