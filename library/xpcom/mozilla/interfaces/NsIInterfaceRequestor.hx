package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIInterfaceRequestor") extern class NsIInterfaceRequestor extends NsISupports
{
	function getInterface(uuid:NsIIDRef, result:NsQIResult) : Void;
}
