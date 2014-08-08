package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIObserver") extern class NsIObserver extends NsISupports
{
	function observe(aSubject:NsISupports, aTopic:String, aData:Wstring) : Void;
}
