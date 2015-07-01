package xpcom.mozilla.modules;


/**
 * Requires Firefox 25
 */
@:native("Promise") extern class Promise<T>
{
	private static function __init__() : Void
	{
		Components.utils.importGlobally("resource://gre/modules/Promise.jsm");
	}
	
	function resolve(?aValue:T) : Promise<T>;
	function reject(?aReason:Dynamic) : Promise<T>;
}
