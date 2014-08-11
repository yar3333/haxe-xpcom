package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICache") extern class NsICache extends NsISupports
{
	/**
	 * ACCESS GRANTED - No descriptor is provided.
	 */
	static inline var ACCESS_NONE = 0;
	/**
	 * ACCESS REQUESTED - I only want to READ, if there isn't an entry just fail. <p>ACCESS GRANTED - You can READ from this descriptor.</p>
	 */
	static inline var ACCESS_READ = 1;
	/**
	 * ACCESS REQUESTED - I have something new I want to WRITE into the cache, make me a new entry and doom the old one, if any. <p>ACCESS GRANTED - You must WRITE to this descriptor because the cache entry was just created for you.</p>
	 */
	static inline var ACCESS_WRITE = 2;
	/**
	 * ACCESS REQUESTED - I want to READ, but I'm willing to update an existing entry if necessary, or create a new one if none exists. <p>ACCESS GRANTED - You can READ the descriptor to determine if it's valid, you may WRITE if it needs updating.</p>
	 */
	static inline var ACCESS_READ_WRITE = 3;
	/**
	 * The storage policy of a cache entry determines the device(s) to which it belongs. See <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheSession" title="">nsICacheSession</a></code> and <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheEntryDescriptor" title="">nsICacheEntryDescriptor</a></code> for more details. <p>Allows the cache entry to be stored in any device. The cache service decides which cache device to use based on "some resource management calculation."</p>
	 */
	static inline var STORE_ANYWHERE = 0;
	/**
	 * The storage policy of a cache entry determines the device(s) to which it belongs. See <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheSession" title="">nsICacheSession</a></code> and <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheEntryDescriptor" title="">nsICacheEntryDescriptor</a></code> for more details. <p>Requires the cache entry to reside in non-persistent storage. That is typically in system RAM.</p>
	 */
	static inline var STORE_IN_MEMORY = 1;
	/**
	 * The storage policy of a cache entry determines the device(s) to which it belongs. See <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheSession" title="">nsICacheSession</a></code> and <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheEntryDescriptor" title="">nsICacheEntryDescriptor</a></code> for more details. <p>Requires the cache entry to reside in persistent storage. That is typically on a system's hard disk.</p>
	 */
	static inline var STORE_ON_DISK = 2;
	/**
	 * The storage policy of a cache entry determines the device(s) to which it belongs. See <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheSession" title="">nsICacheSession</a></code> and <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheEntryDescriptor" title="">nsICacheEntryDescriptor</a></code> for more details. <p>Requires the cache entry to reside in persistent storage, and in a separate file.</p>
	 */
	static inline var STORE_ON_DISK_AS_FILE = 3;
	/**
	 * The storage policy of a cache entry determines the device(s) to which it belongs. See <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheSession" title="">nsICacheSession</a></code> and <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheEntryDescriptor" title="">nsICacheEntryDescriptor</a></code> for more details. <p>Requires the cache entry to reside in persistent, reliable storage for offline use.</p>
	 */
	static inline var STORE_OFFLINE = 4;
	/**
	 * All entries for a cache session are stored as streams of data or as objects. This constant specify that cache session is not a stream based entry when calling <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheService#createSession()">nsICacheService.createSession()</a></code> method.
	 */
	static inline var NOT_STREAM_BASED = 0;
	/**
	 * All entries for a cache session are stored as streams of data or as objects. This constant specify that cache session is a stream based entry when calling <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICacheService#createSession()">nsICacheService.createSession()</a></code> method.
	 */
	static inline var STREAM_BASED = 1;
	/**
	 * The synchronous OpenCacheEntry() may be blocking or non-blocking. If a cache entry is waiting to be validated by another cache descriptor (so no new cache descriptors for that key can be created), OpenCacheEntry() will return NS_ERROR_CACHE_WAIT_FOR_VALIDATION in non-blocking mode. If the cache entry is validated, then a descriptor for that entry will be created and returned. If the cache entry was doomed, then a descriptor will be created for a new cache entry for the key.
	 */
	static inline var NON_BLOCKING = 0;
	/**
	 * The synchronous OpenCacheEntry() may be blocking or non-blocking. In blocking mode, it will wait until the cache entry for the key has been validated or doomed. If the cache entry is validated, then a descriptor for that entry will be created and returned. If the cache entry was doomed, then a descriptor will be created for a new cache entry for the key.
	 */
	static inline var BLOCKING = 1;
}
