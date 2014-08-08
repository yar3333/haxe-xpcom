package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISupportsWeakReference") extern class NsISupportsWeakReference extends NsISupports
{
	function GetWeakReference() : NsIWeakReference;
}
