package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebNavigation") extern class NsIWebNavigation extends NsISupports
{
	/**
	 * This flag defines the range of bits that may be specified.
	 */
	static inline var LOAD_FLAGS_MASK = 65535;
	/**
	 * This is the default value for the load flags parameter.
	 */
	static inline var LOAD_FLAGS_NONE = 0;
	/**
	 * This flag specifies that the load should have the semantics of an HTML Meta-refresh tag (That is, that the cache should be bypassed). This flag is only applicable to loadURI. XXX the meaning of this flag is poorly defined. XXX no one uses this, so we should probably deprecate and remove it.
	 */
	static inline var LOAD_FLAGS_IS_REFRESH = 16;
	/**
	 * This flag specifies that the load should have the semantics of a link click. This flag is only applicable to loadURI. XXX the meaning of this flag is poorly defined.
	 */
	static inline var LOAD_FLAGS_IS_LINK = 32;
	/**
	 * This flag specifies that history should not be updated. This flag is only applicable to loadURI.
	 */
	static inline var LOAD_FLAGS_BYPASS_HISTORY = 64;
	/**
	 * This flag specifies that any existing history entry should be replaced. This flag is only applicable to loadURI.
	 */
	static inline var LOAD_FLAGS_REPLACE_HISTORY = 128;
	/**
	 * This flag specifies that the local web cache should be bypassed, but an intermediate proxy cache could still be used to satisfy the load.
	 */
	static inline var LOAD_FLAGS_BYPASS_CACHE = 256;
	/**
	 * This flag specifies that any intermediate proxy caches should be bypassed (That is, that the content should be loaded from the origin server).
	 */
	static inline var LOAD_FLAGS_BYPASS_PROXY = 512;
	/**
	 * This flag specifies that a reload was triggered as a result of detecting an incorrect character encoding while parsing a previously loaded document.
	 */
	static inline var LOAD_FLAGS_CHARSET_CHANGE = 1024;
	/**
	 * <p>If this flag is set, Stop() will be called before the load starts and will stop both content and network activity (the default is to only stop network activity).</p> Effectively, this passes the STOP_CONTENT flag to Stop(), in addition to the STOP_NETWORK flag.
	 */
	static inline var LOAD_FLAGS_STOP_CONTENT = 2048;
	/**
	 * A hint this load was prompted by an external program: take care!
	 */
	static inline var LOAD_FLAGS_FROM_EXTERNAL = 4096;
	/**
	 * This flag specifies that the URI may be submitted to a third-party server for correction. This should only be applied to non-sensitive URIs entered by users.
	 */
	static inline var LOAD_FLAGS_ALLOW_THIRD_PARTY_FIXUP = 8192;
	/**
	 * This flag specifies that this is the first load in this object. Set with care, since setting incorrectly can cause us to assume that nothing was actually loaded in this object if the load ends up being handled by an external application.
	 */
	static inline var LOAD_FLAGS_FIRST_LOAD = 16384;
	/**
	 * This flag specifies that the load should not be subject to popup blocking checks.
	 */
	static inline var LOAD_FLAGS_ALLOW_POPUPS = 32768;
	/**
	 * This flag specifies that all network activity should be stopped. This includes both active network loads and pending META-refreshes.
	 */
	static inline var STOP_NETWORK = 1;
	/**
	 * This flag specifies that all content activity should be stopped. This includes animated images, plugins and pending Javascript timeouts.
	 */
	static inline var STOP_CONTENT = 2;
	/**
	 * This flag specifies that all activity should be stopped.
	 */
	static inline var STOP_ALL = 3;
	
	/**
	 * Indicates if the object can go back. If true this indicates that there is back session history available for navigation. Read only.
	 */
	var canGoBack : PRBool;
	/**
	 * Indicates if the object can go forward. If true this indicates that there is forward session history available for navigation. Read only.
	 */
	var canGoForward : PRBool;
	/**
	 * The currently loaded URI or null. Read only.
	 */
	var currentURI : NsIURI;
	/**
	 * Retrieves the current DOM document for the frame, or lazily creates a blank document if there is none. This attribute never returns null except for unexpected error situations. Read only.
	 */
	var document : NsIDOMDocument;
	/**
	 * The referring URI for the currently loaded URI or null. Read only.
	 */
	var referringURI : NsIURI;
	/**
	 * The session history object used by this web navigation instance.
	 */
	var sessionHistory : NsISHistory;
	
	function gotoIndex(index:Long) : Void;
	function loadURI(URI:Wstring, loadFlags:ULong, referrer:NsIURI, postData:NsIInputStream, headers:NsIInputStream) : Void;
	function reload(reloadFlags:ULong) : Void;
	function stop(stopFlags:ULong) : Void;
}
