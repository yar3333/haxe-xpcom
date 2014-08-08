package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProtocolProxyCallback") extern class NsIProtocolProxyCallback extends NsISupports
{
	function onProxyAvailable(aRequest:NsICancelable, aURI:NsIURI, aProxyInfo:NsIProxyInfo, aStatus:Nsresult) : Void;
}
