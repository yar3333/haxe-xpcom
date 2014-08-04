package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIWebSocketChannel") extern class NsIWebSocketChannel extends NsISupports
{
	/**
	 * Sec-Websocket-Extensions response header value. Read only.
	 */
	var extensions : ACString;
	/**
	 * The load group of the WebSockets code.
	 */
	var loadGroup : NsILoadGroup;
	/**
	 * The notification callbacks for authorization and so forth.
	 */
	var notificationCallbacks : NsIInterfaceRequestor;
	/**
	 * The original URI used to construct the protocol connection. This is used in the case of a redirect or URI "resolution" (for example resolving a resource: URI to a file: URI) so that the original pre-redirect URI can still be obtained. This is never null. Read only.
	 */
	var originalURI : NsIURI;
	/**
	 * Sec-Websocket-Protocol value.
	 */
	var protocol : ACString;
	/**
	 * Transport-level security information (if any). Read only.
	 */
	var securityInfo : NsISupports;
	/**
	 * The URI corresponding to the protocol connection after any redirections are completed. Read only.
	 */
	var URI : NsIURI;
}
