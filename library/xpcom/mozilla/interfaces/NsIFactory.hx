package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFactory") extern class NsIFactory extends NsISupports
{
	function createInstance(aOuter:NsISupports, iid:NsIIDRef, result:NsQIResult) : Void;
	function lockFactory(lock:PRBool) : Void;
}
