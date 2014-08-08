package xpcom.mozilla.modules;


/**
 * Requires Gecko 25 (Firefox 25 / Thunderbird 25 / SeaMonkey 2.22).
 */
@:native("Promise") extern class Promise
{
	static function __init__()
	{
		Components.utils.import_("resource://gre/modules/Promise.jsm");
	}
	
	/**
	 * Obsolete since Gecko 30.
	 */
	//function defer() : Deferred;
	
	function resolve(?aValue:Dynamic) : Promise;
	function reject(?aReason:Dynamic) : Promise;
}
