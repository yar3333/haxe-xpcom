package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIGeolocationProvider") extern class NsIGeolocationProvider extends NsISupports
{
	function isReady() : Bool;
	function shutdown() : Void;
	function startup() : Void;
	function watch(callback:NsIGeolocationUpdate) : Void;
}
