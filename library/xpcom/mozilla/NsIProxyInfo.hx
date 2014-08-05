package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIProxyInfo") extern class NsIProxyInfo
{
	/**
	 * This attribute specifies the proxy to failover to when this proxy fails.
	 */
	var failoverProxy : NsIProxyInfo;
	/**
	 * This attribute specifies the failover timeout in seconds for this proxy. If a nsIProxyInfo is reported as failed via nsIProtocolProxyService.getFailoverForProxy(), then the failed proxy will not be used again for this many seconds. Read only.
	 */
	var failoverTimeout : ULong;
	/**
	 * This attribute specifies flags that modify the proxy type. The value of this attribute is the bit-wise combination of the Proxy Flags defined below. Any undefined bits are reserved for future use. Read only.
	 */
	var flags : ULong;
	/**
	 * This attribute specifies the hostname of the proxy server. Read only. 
	 * Note:  Prior to Gecko 1.8 host was available by the host method.
	 */
	var host : AUTF8String;
	/**
	 * Proxy info objects may be chained if several proxies could be treated equivalently. This is used to support proxy failover. Read only. Obsolete since Gecko 1.8
	 */
	var next : NsIProxyInfo;
	/**
	 * This attribute specifies the port number of the proxy server. Read only. 
	 * Note:  Prior to Gecko 1.8 port was available by the port method.
	 */
	var port : Long;
	/**
	 * This attribute specifies the type of the proxy server as a case insensitive ASCII string.
	 * Some special values for this attribute include (but are not limited to) the following:
	 * "http" - HTTP proxy (or SSL CONNECT for HTTPS)
	 * "socks" - SOCKS v5 proxy
	 * "socks4" - SOCKS v4 proxy
	 * "direct" - no proxy
	 * "unknown" - unknown proxy (see nsIProtocolProxyService.resolve())
	 * A future version of this interface may define additional types. Read only. 
	 * Note: Prior to Gecko 1.8 type was available by the type method.
	 */
	var type : ACString;
}
