package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISocketProvider") extern class NsISocketProvider extends NsISupports
{
	public static inline function createInstance() : NsISocketProvider return xpcom.Components.Constructor("@mozilla.org/network/socket;2", xpcom.Components.interfaces.nsISocketProvider);
	
	/**
	 * This flag is set if the proxy is to perform hostname resolution instead of the client. When set, the hostname parameter passed in this interface will be used instead of the address structure passed for a later request. 
	 */
	static inline var PROXY_RESOLVES_HOST = 1 << 0;
	/**
	 * When setting this flag, the socket will not apply any credentials when establishing a connection. For example, an SSL connection would not send any client-certificates if this flag is set. 
	 */
	static inline var ANONYMOUS_CONNECT = 1 << 1;
	
	function addToSocket(aFamily:Long, aHost:String, aPort:Long, aProxyHost:String, aProxyPort:Long, aFlags:ULong, aFileDesc:PRFileDescStar, aSecurityInfo:NsISupports) : Void;
	function newSocket(aFamily:Long, aHost:String, aPort:Long, aProxyHost:String, aProxyPort:Long, aFlags:ULong, aFileDesc:PRFileDescStar, aSecurityInfo:NsISupports) : Void;
}
