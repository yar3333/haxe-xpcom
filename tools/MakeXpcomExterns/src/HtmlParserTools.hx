import htmlparser.HtmlNodeElement;
import Type;

class HtmlParserTools
{
	static var PLACEHOLDER = ~/\{([_a-zA-Z][_a-zA-Z0-9]*(?:\.[_a-zA-Z][_a-zA-Z0-9]*)*)\}/g;
	
	public static function getAttr(node:HtmlNodeElement, attrName:String, ?defaultValue:Dynamic) : Dynamic
	{
		if (node == null || !node.hasAttribute(attrName))
		{
			return Std.is(defaultValue, Array) ? null : defaultValue;
		}
		return parseValue(node.getAttribute(attrName), defaultValue);
	}
	
	public static function getAttrInt(node:HtmlNodeElement, attrName:String, ?defaultValue:Int) : Int
	{
		var r = Std.parseInt(node.getAttribute(attrName));
		return r == null || Math.isNaN(r) ? defaultValue : r;
	}
	
	public static function findOne(node:HtmlNodeElement, selector:String) : HtmlNodeElement
	{
		var nodes = node.find(selector);
		return nodes.length > 0 ? nodes[0] : null;
	}
	
	static function parseValue(value:String, ?defaultValue:Dynamic) : Dynamic
	{
		if (Std.is(defaultValue, Float)) return Std.parseFloat(value);
		if (Std.is(defaultValue, Bool)) return stdlib.Std.bool(value);
		if (Std.is(defaultValue, Array))
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
					elems.push(value.substring(lastCommaIndex + 1, i));
					lastCommaIndex = i;
				}
			}
			elems.push(value.substring(lastCommaIndex + 1, value.length));
			
			return defaultValue.length > 0
				? elems.map(function(item) return parseValue(item, defaultValue[0]))
				: elems;
		}
		return value;
	}
	
	@:noUsing
	public static function applyHtmlParams(html:String, params:Dynamic) : String
	{
		if (params == null || html.indexOf("{") < 0) return html;
		
		return PLACEHOLDER.map(html, function(re)
		{
			var param = re.matched(1);
			var obj = params;
			var n : Int;
			while (obj != null && (n = param.indexOf(".")) >= 0)
			{
				obj = getHtmlParamValue(obj, param.substr(0, n));
				param = param.substr(n + 1);
			}
			return obj != null ? getHtmlParamValue(obj, param) : re.matched(0);
		});
	}
	
	static function getHtmlParamValue(params:Dynamic, param:String) : String
	{
		if (Reflect.isFunction(Reflect.field(params, "get_" + param)))
		{
			return Reflect.callMethod(params, Reflect.field(params, "get_" + param), []);
		}
		else
		if (Reflect.hasField(params, param))
		{
			return Reflect.field(params, param);
		}
		return null;
	}
}
