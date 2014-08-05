package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIProtocolProxyCallback") extern class NsIProtocolProxyCallback extends NsISupports
{
	function onProxyAvailable(aRequest:NsICancelable, aURI:NsIURI, aProxyInfo:NsIProxyInfo, aStatus:Nsresult) : Void;
}
