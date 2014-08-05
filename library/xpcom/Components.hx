package xpcom;

@:native("Components") extern class Components
{
	static var utils(default, never) : ComponentsUtils;
	static var results(default, never) : ComponentsResults;
	static var interfaces(default, never) : Dynamic;
	static var classes(default, never) : Dynamic;
	
	static function Constructor(url:String, iterfaceName:String, ?initMethodName:String) : Dynamic;
}
