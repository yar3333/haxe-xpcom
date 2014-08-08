package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProtocolProxyFilter") extern class NsIProtocolProxyFilter extends NsISupports
{
	function applyFilter(aProxyService:NsIProtocolProxyService, aURI:NsIURI, aProxy:NsIProxyInfo) : NsIProxyInfo;
}
