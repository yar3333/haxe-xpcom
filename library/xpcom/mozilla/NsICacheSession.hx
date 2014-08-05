package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICacheSession") extern class NsICacheSession extends NsISupports
{
	/**
	 * Expired entries will be doomed or evicted if this attribute is set to true. If false, expired entries will be returned (useful for offline mode and clients, such as HTTP, that can update the valid lifetime of cached content). This attribute defaults to true.
	 */
	var doomEntriesIfExpired : PRBool;
	
	function asyncOpenCacheEntry(key:ACString, accessRequested:NsCacheAccessMode, listener:NsICacheListener, ?noWait:Bool) : Void;
	function evictEntries() : Void;
	function isStorageEnabled() : PRBool;
	function openCacheEntry(key:ACString, accessRequested:NsCacheAccessMode, blockingMode:Bool) : NsICacheEntryDescriptor;
	function doomEntry(key:ACString, listener:NsICacheListener) : Void;
}
