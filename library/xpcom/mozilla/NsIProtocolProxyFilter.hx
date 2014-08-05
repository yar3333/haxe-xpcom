package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIProtocolProxyFilter") extern class NsIProtocolProxyFilter extends NsISupports
{
	function applyFilter(aProxyService:NsIProtocolProxyService, aURI:NsIURI, aProxy:NsIProxyInfo) : NsIProxyInfo;
}
