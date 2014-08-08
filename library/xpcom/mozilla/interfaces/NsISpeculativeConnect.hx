package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISpeculativeConnect") extern class NsISpeculativeConnect extends NsISupports
{
	function speculativeConnect(aURI:NsIURI, aCallbacks:NsIInterfaceRequestor, aTarget:NsIEventTarget) : Void;
}
