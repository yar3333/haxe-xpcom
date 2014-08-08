package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWinAccessNode") extern class NsIWinAccessNode extends NsISupports
{
	function queryNativeInterface(aIID:MSCOMIIDRef) : VoidPtr;
}
