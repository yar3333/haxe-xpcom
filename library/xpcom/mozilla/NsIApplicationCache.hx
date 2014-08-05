package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIApplicationCache") extern class NsIApplicationCache extends NsISupports
{
	/**
	 * This item is the application manifest.
	 */
	static inline var ITEM_MANIFEST = 1;
	/**
	 * This item was explicitly listed in the application manifest.
	 */
	static inline var ITEM_EXPLICIT = 2;
	/**
	 * This item was navigated to in a top level browsing context, and named this cache's group as its manifest.
	 */
	static inline var ITEM_IMPLICIT = 4;
	/**
	 * This item was added to the cache using the dynamic scripting API.
	 */
	static inline var ITEM_DYNAMIC = 8;
	/**
	 * This item was listed in the application manifest, but named a different cache group as its manifest.
	 */
	static inline var ITEM_FOREIGN = 16;
	/**
	 * This item was listed as a fallback entry.
	 */
	static inline var ITEM_FALLBACK = 32;
	/**
	 * This item matched an opportunistic cache namespace and was cached for that reason.
	 */
	static inline var ITEM_OPPORTUNISTIC = 64;
	
	/**
	 * true if the cache is the active cache for this group, otherwise false. Read only.
	 */
	var active : Bool;
	/**
	 * The client ID for this application cache. Clients can open a session with nsICacheService.createSession() using this client ID and a storage policy of STORE_OFFLINE to access this cache. Read only.
	 */
	var clientID : ACString;
	/**
	 * The group ID for this cache group. This is the URI of the cache manifest file. Read only.
	 */
	var groupID : ACString;
	/**
	 * The disk usage of the application cache, in bytes. Read only.
	 */
	var usage : ULong;
}
