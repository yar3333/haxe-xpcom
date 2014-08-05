package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIGeolocationProvider") extern class NsIGeolocationProvider extends NsISupports
{
	function isReady() : Bool;
	function shutdown() : Void;
	function startup() : Void;
	function watch(callback:NsIGeolocationUpdate) : Void;
}
