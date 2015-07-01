package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * Representation of a cache storage. There can be just-in-mem,
 * in-mem+on-disk, in-mem+on-disk+app-cache or just a specific
 * app-cache storage.
 */
@:native("Components.interfaces.nsICacheStorage") extern class NsICacheStorage extends NsISupports
{
	/**
	 * Placeholder for specifying "no special flags" during open.
	 */
	static var OPEN_NORMALLY : Int; // 0
	
	/**
	 * Rewrite any existing data when opening a URL.
	 */
	static var OPEN_TRUNCATE : Int; // 1 << 0
	
	/**
	 * Only open an existing entry.  Don't create a new one.
	 */
	static var OPEN_READONLY : Int; // 1 << 1
	
	/**
	 * Use for first-paint blocking loads.
	 */
	static var OPEN_PRIORITY : Int; // 1 << 2
	
	/**
	 * Bypass the cache load when write is still in progress.
	 */
	static var OPEN_BYPASS_IF_BUSY : Int; // 1 << 3
	
	/**
	 * Perform the cache entry check (onCacheEntryCheck invocation) on any thread 
	 * for optimal perfomance optimization.  If this flag is not specified it is
	 * ensured that onCacheEntryCheck is called on the same thread as respective 
	 * asyncOpen has been called.
	 */
	static var CHECK_MULTITHREADED : Int; // 1 << 4
	
	/**
	 * Don't automatically update any 'last used' metadata of the entry.
	 */
	static var OPEN_SECRETLY : Int; // 1 << 5
	
	/**
	 * Asynchronously opens a cache entry for the specified URI.
	 * Result is fetched asynchronously via the callback.
	 *
	 * @param aURI
	 *    The URI to search in cache or to open for writting.
	 * @param aIdExtension
	 *    Any string that will extend (distinguish) the entry.  Two entries
	 *    with the same aURI but different aIdExtension will be comletely
	 *    different entries.  If you don't know what aIdExtension should be
	 *    leave it empty.
	 * @param aFlags
	 *    OPEN_NORMALLY - open cache entry normally for read and write
	 *    OPEN_TRUNCATE - delete any existing entry before opening it
	 *    OPEN_READONLY - don't create an entry if there is none
	 *    OPEN_PRIORITY - give this request a priority over others
	 *    OPEN_BYPASS_IF_BUSY - backward compatibility only, LOAD_BYPASS_LOCAL_CACHE_IF_BUSY
	 *    CHECK_MULTITHREADED - onCacheEntryCheck may be called on any thread, consumer 
	 *                          implementation is thread-safe
	 * @param aCallback
	 *    The consumer that receives the result.
	 *    IMPORTANT: The callback may be called sooner the method returns.
	 */
	function asyncOpenURI(aURI:NsIURI, aIdExtension:ACString, aFlags:Int, aCallback:NsICacheEntryOpenCallback) : Void;
	
	/**
	 * Immediately opens a new and empty cache entry in the storage, any existing
	 * entries are immediately doomed.  This is similar to the recreate() method
	 * on nsICacheEntry.
	 *
	 * Storage may not implement this method and throw NS_ERROR_NOT_IMPLEMENTED.
	 * In that case consumer must use asyncOpen with OPEN_TRUNCATE flag and get
	 * the new entry via a callback.
	 *
	 * @param aURI @see asyncOpenURI
	 * @param aIdExtension @see asyncOpenURI
	 */
	function openTruncate(aURI:NsIURI, aIdExtension:ACString) : NsICacheEntry;
	
	/**
	 * Synchronously check on existance of an entry.  In case of disk entries
	 * this uses information from the cache index.  When the index data are not
	 * up to date or index is still building, NS_ERROR_NOT_AVAILABLE is thrown.
	 * The same error may throw any storage implementation that cannot determine
	 * entry state without blocking the caller.
	 */
	function exists(aURI:NsIURI, aIdExtension:ACString) : Bool;
	
	/**
	 * Asynchronously removes an entry belonging to the URI from the cache.
	 */
	function asyncDoomURI(aURI:NsIURI, aIdExtension:ACString, aCallback:NsICacheEntryDoomCallback) : Void;
	
	/**
	 * Asynchronously removes all cached entries under this storage.
	 * NOTE: Disk storage also evicts memory storage.
	 */
	function asyncEvictStorage(aCallback:NsICacheEntryDoomCallback) : Void;
	
	/**
	 * Visits the storage and its entries.
	 * NOTE: Disk storage also visits memory storage.
	 */
	function asyncVisitStorage(aVisitor:NsICacheStorageVisitor, aVisitEntries:Bool) : Void;
}