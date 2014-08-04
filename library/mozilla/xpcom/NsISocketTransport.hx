package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISocketTransport") extern class NsISocketTransport extends NsITransport
{
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
}
