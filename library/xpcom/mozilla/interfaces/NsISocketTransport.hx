package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISocketTransport") extern class NsISocketTransport extends NsITransport
{
	/**
	 * Connecting timeout.
	 */
	static inline var TIMEOUT_CONNECT = 0;
	/**
	 * Read and write timeouts.
	 */
	static inline var TIMEOUT_READ_WRITE = 1;
	/**
	 * Transport is resolving the host. Usually a DNS lookup.
	 */
	static inline var STATUS_RESOLVING = 0x804b0003;
	/**
	 * Transport has resolved the host.
	 */
	static inline var STATUS_RESOLVED = 0x804b000b;
	static inline var STATUS_CONNECTING_TO = 0x804b0007;
	static inline var STATUS_CONNECTED_TO = 0x804b0004;
	static inline var STATUS_SENDING_TO = 0x804b0005;
	static inline var STATUS_WAITING_FOR = 0x804b000a;
	static inline var STATUS_RECEIVING_FROM = 0x804b0006;
	/**
	 * When making a new connection BYPASS_CACHE will force the Necko DNS cache entry to be refreshed with a new call to NSPR if it is set before opening the new stream.
	 */
	static inline var BYPASS_CACHE = 0;
	/**
	 * When this flag is set, the socket will not apply any credentials when establishing a connection. For example, an SSL connection would not send any client-certificates if this flag is set.
	 */
	static inline var ANONYMOUS_CONNECT = 1;
	/**
	 * When this flag is set, the socket will ignore any IPv6 addresses the host may offer and will only attempt to connect to IPv4 addresses.
	 */
	static inline var DISABLE_IPV6 = 2;
	
	/**
	 * A bitmask that can be used to modify underlying behavior of the socket connection. See Connection Flag Constants for more details.
	 */
	var connectionFlags : ULong;
	/**
	 * Get the host for the underlying socket connection. Read only.
	 */
	var host : AUTF8String;
	/**
	 * Get the port for the underlying socket connection. Read only.
	 */
	var port : Long;
	/**
	 * Security notification callbacks passed to the secure socket provider via nsISSLSocketControl at socket creation time. This object supports nsIBadCertListener2 and nsISSLErrorListener for SSL connections, and possibly other interfaces.
	 * Note: This attribute cannot be changed once a stream has been opened.
	 */
	var securityCallbacks : NsIInterfaceRequestor;
	/**
	 * Security info object returned from the secure socket provider. This object supports nsISSLSocketControl, nsITransportSecurityInfo, and possibly other interfaces.
	 * This attribute is only available once the socket is connected. Read only.
	 */
	var securityInfo : NsISupports;
	
	function getPeerAddr() : PRNetAddr;
	function getSelfAddr() : PRNetAddr;
	function getTimeout(aType:ULong) : ULong;
	function isAlive() : Bool;
	function setTimeout(aType:ULong, aValue:ULong) : Void;
}
