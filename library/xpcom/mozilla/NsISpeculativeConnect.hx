package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISpeculativeConnect") extern class NsISpeculativeConnect extends NsISupports
{
	function speculativeConnect(aURI:NsIURI, aCallbacks:NsIInterfaceRequestor, aTarget:NsIEventTarget) : Void;
}
