package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIRequest") extern class NsIRequest extends NsISupports
{
	/**
	 * No special load flags.
	 */
	static inline var LOAD_NORMAL = 0;
	/**
	 * Do not deliver status notifications to the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIProgressEventSink" title="">nsIProgressEventSink</a></code>, or keep this load from completing the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsILoadGroup" title="">nsILoadGroup</a></code> it may belong to.
	 */
	static inline var LOAD_BACKGROUND = 1 << 0;
	/**
	 * This flag prevents caching of any kind. It does not, however, prevent cached content from being used to satisfy this request.
	 */
	static inline var INHIBIT_CACHING = 1 << 7;
	/**
	 * This flag prevents caching on disk (or other persistent media), which may be needed to preserve privacy. For HTTPS, this flag is set automatically.
	 */
	static inline var INHIBIT_PERSISTENT_CACHING = 1 << 8;
	/**
	 * Force an end-to-end download of content data from the origin server. This flag is used for a shift-reload.
	 */
	static inline var LOAD_BYPASS_CACHE = 1 << 9;
	/**
	 * Load from the cache, bypassing protocol specific validation logic. This flag is used when browsing via history. It is not recommended for normal browsing as it may likely violate reasonable assumptions made by the server and confuse users.
	 */
	static inline var LOAD_FROM_CACHE = 1 << 10;
	/**
	 * Forces validation of any cached content independent of its expiration time.
	 */
	static inline var VALIDATE_ALWAYS = 1 << 11;
	/**
	 * Disables validation of expired content.
	 */
	static inline var VALIDATE_NEVER = 1 << 12;
	/**
	 * Disables validation of expired content, provided it has already been validated (at least once) since the start of this session.
	 */
	static inline var VALIDATE_ONCE_PER_SESSION = 1 << 13;
	/**
	 * <p>When set, this flag indicates that no user-specific data should be added to the request when opened. This means that things like authorization tokens or cookie headers should not be added. </p> <div class="note"><strong>Note:</strong> This will prevent proxy authentications from working, so use this flag with caution.</div>
	 */
	static inline var LOAD_ANONYMOUS = 1 << 14;
	
	/**
	 * The load flags of this request. Bits 0-15 are reserved. When added to a load group, this request's load flags are merged with the load flags of the load group.
	 */
	var loadFlags : NsLoadFlags;
	/**
	 * The load group of this request. While pending, the request is a member of the load group. It is the responsibility of the request to implement this policy.
	 */
	var loadGroup : NsILoadGroup;
	/**
	 * The name of the request. Often this is the URI of the request. Read only.
	 */
	var name : AUTF8String;
	/**
	 * The error status associated with the request. Read only.
	 */
	var status : Nsresult;
	
	function cancel(aStatus:Nsresult) : Void;
	function isPending() : Bool;
	function resume() : Void;
	function suspend() : Void;
}
