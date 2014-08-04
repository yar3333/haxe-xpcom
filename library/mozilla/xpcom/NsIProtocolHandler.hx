package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIProtocolHandler") extern class NsIProtocolHandler extends NsISupports
{
	/**
	 * The default port is the port the protocol uses by default. If the protocol doesn't need a port (for example, the "about" protocol), this attribute is -1. Read only.
	 */
	var defaultPort : Long;
	/**
	 * Protocol-specific flags. Read only.
	 * Note: Starting with Firefox 3, one of URI_LOADABLE_BY_ANYONE, URI_DANGEROUS_TO_LOAD, URI_IS_UI_RESOURCE, or URI_IS_LOCAL_FILE must be set on every protocol handler. Current versions of Firefox assume that the URI has URI_LOADABLE_BY_ANYONE set, but this will not work starting with the Mozilla 2 platform.
	 */
	var protocolFlags : ULong;
	/**
	 * The scheme for this protocol ("file", "http", and so forth). Read only.
	 */
	var scheme : ACString;
}
