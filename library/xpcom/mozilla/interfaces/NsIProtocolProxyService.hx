package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProtocolProxyService") extern class NsIProtocolProxyService extends NsISupports
{
	public static inline function getService() : NsIProtocolProxyService
	{
		return xpcom.Components.classes[cast "@mozilla.org/network/protocol-proxy-service;1"].getService(NsIProtocolProxyService);
	}
	
	/**
	 * 
	 *         <p>This flag may be passed to the resolve method to request that it fail instead of block the calling thread. Proxy Auto Config (PAC) may perform a synchronous DNS query, which may not return immediately. So, calling resolve without this flag may result in locking up the calling thread for a lengthy period of time.</p>
	 *         <p>By passing this flag to resolve, one can failover to asyncResolve to avoid locking up the calling thread if a PAC query is required.</p>
	 *         When this flag is passed to resolve, resolve may throw the exception NS_BASE_STREAM_WOULD_BLOCK to indicate that it failed due to this flag being present.
	 */
	static inline var RESOLVE_NON_BLOCKING = 1<<0;
	
	function asyncResolve(aURI:NsIURI, aFlags:ULong, aCallback:NsIProtocolProxyCallback) : NsICancelable;
	function newProxyInfo(aType:ACString, aHost:AUTF8String, aPort:Long, aFlags:ULong, aFailoverTimeout:ULong, aFailoverProxy:NsIProxyInfo) : NsIProxyInfo;
	function getFailoverForProxy(aProxyInfo:NsIProxyInfo, aURI:NsIURI, aReason:Nsresult) : NsIProxyInfo;
	function registerFilter(aFilter:NsIProtocolProxyFilter, aPosition:ULong) : Void;
	function unregisterFilter(aFilter:NsIProtocolProxyFilter) : Void;
}
