package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIContentPrefCallback2") extern class NsIContentPrefCallback2 extends NsISupports
{
	static inline var COMPLETE_OK = 0;
	static inline var COMPLETE_ERROR = 1;
	
	function handleCompletion(reason:UShort) : Void;
	function handleError(error:Nsresult) : Void;
	function handleResult(pref:NsIContentPref) : Void;
}
