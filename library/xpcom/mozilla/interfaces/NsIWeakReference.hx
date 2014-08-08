package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWeakReference") extern class NsIWeakReference extends NsISupports
{
	function QueryReferent(uuid:NsIIDRef, result:NsQIResult) : Void;
}
