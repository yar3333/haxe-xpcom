package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * Provides access to particual cache storages of the network URI cache.
 */
@:native("Components.interfaces.nsICacheStorageService") extern class NsICacheStorageService extends NsISupports
{
	/**
	 * Get storage where entries will only remain in memory, never written to the disk.
	 *
	 * NOTE: Any existing disk entry for [URL|id-extension] will be doomed
	 * prior opening an entry using this memory-only storage.  Result of
	 * AsyncOpenURI will be a new and empty memory-only entry.  Using
	 * OPEN_READONLY open flag has no effect on this behavior.
	 *
	 * @param aLoadContextInfo Information about the loading context, this focuses the storage JAR and respects separate storage for private browsing.
	 */
	function memoryCacheStorage(aLoadContextInfo:NsILoadContextInfo) : NsICacheStorage;

	/**
	 * Get storage where entries will be written to disk when not forbidden by response headers.
	 *
	 * @param aLookupAppCache When set true (for top level document loading channels) app cache will be first to check on to find entries in.
	 */
	function diskCacheStorage(aLoadContextInfo:NsILoadContextInfo, aLookupAppCache:bool) : NsICacheStorage;

	/**
	 * Get storage for a specified application cache obtained using some different
	 * mechanism.
	 *
	 * @param aLoadContextInfo Mandatory reference to a load context information.
	 * @param aApplicationCache Optional reference to an existing appcache.  When left null, this will work with offline cache as a whole.
	 */
	function appCacheStorage(aLoadContextInfo:NsILoadContextInfo, aApplicationCache:NsIApplicationCache) : NsICacheStorage;
	
	/**
	 * Evict the whole cache.
	 */
	function clear() : Void;
	
	/**
	 * Purge only data of disk backed entries.  Metadata are left for performance purposes.
	 */
	static var PURGE_DISK_DATA_ONLY : Int;
	/**
	 * Purge whole disk backed entries from memory.  Disk files will be left unattended.
	 */
	static var PURGE_DISK_ALL : Int;
	/**
	 * Purge all entries we keep in memory, including memory-storage entries. This may be dangerous to use.
	 */
	static var PURGE_EVERYTHING : Int;
	/**
	 * Purges data we keep warmed in memory.  Use for tests and for saving memory.
	 */
	function purgeFromMemory(aWhat:Int) : Void;
	
	/**
	 * I/O thread target to use for any operations on disk
	 */
	var ioTarget : NsIEventTarget;
	
	/**
	 * Asynchronously determine how many bytes of the disk space the cache takes.
	 * @see nsICacheStorageConsumptionObserver
	 * @param aObserver
	 *    A mandatory (weak referred) observer. Documented at nsICacheStorageConsumptionObserver.
	 *    NOTE: the observer MUST implement nsISupportsWeakReference.
	 */
	function asyncGetDiskConsumption(aObserver:NsICacheStorageConsumptionObserver) : Void;
}
