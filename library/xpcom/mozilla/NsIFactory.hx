package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFactory") extern class NsIFactory extends NsISupports
{
	function createInstance(aOuter:NsISupports, iid:NsIIDRef, result:NsQIResult) : Void;
	function lockFactory(lock:PRBool) : Void;
}
