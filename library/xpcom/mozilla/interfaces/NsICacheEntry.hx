package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

typedef NsCacheAccessMode = Int;
typedef NsCacheStoragePolicy = Int;

@:native("Components.interfaces.nsICacheEntry") extern class NsICacheEntry extends NsISupports
{
	/**
	 * Placeholder for the initial value of expiration time.
	 */
	static var NO_EXPIRATION_TIME : Int; // 0xFFFFFFFF;

	/**
	 * Get the key identifying the cache entry.
	 */
	var key : ACString;

	/**
	 * Whether the entry is memory/only or persisted to disk.
	 * Note: private browsing entries are reported as persistent for consistency
	 * while are not actually persisted to disk.
	 */
	var persistent : Bool;

	/**
	 * Get the number of times the cache entry has been opened.
	 */
	var fetchCount : Int;

	/**
	 * Get the last time the cache entry was opened (in seconds since the Epoch).
	 */
	var lastFetched : Int;

	/**
	 * Get the last time the cache entry was modified (in seconds since the Epoch).
	 */
	var lastModified : Int;

	/**
	 * Get the expiration time of the cache entry (in seconds since the Epoch).
	 */
	var expirationTime : Int;

	/**
	 * Set the time at which the cache entry should be considered invalid (in
	 * seconds since the Epoch).
	 */
	function setExpirationTime(expirationTime:Int) : Void;

	/**
	 * This method is intended to override the per-spec cache validation
	 * decisions for a duration specified in seconds. The current state can
	 * be examined with isForcedValid (see below). This value is not persisted,
	 * so it will not survive session restart. Cache entries that are forced valid
	 * will not be evicted from the cache for the duration of forced validity.
	 * This means that there is a potential problem if the number of forced valid
	 * entries grows to take up more space than the cache size allows.
	 *
	 * @param aSecondsToTheFuture
	 *        the number of seconds the default cache validation behavior will be
	 *        overridden before it returns to normal
	 */
	function forceValidFor(aSecondsToTheFuture:Int) : Void;

	/**
	 * The state variable for whether this entry is currently forced valid.
	 * Defaults to false for normal cache validation behavior, and will return
	 * true if the number of seconds set by forceValidFor() has yet to be reached.
	 */
	var isForcedValid : Bool;

	/**
	 * Open blocking input stream to cache data.  Use the stream transport
	 * service to asynchronously read this stream on a background thread.
	 * The returned stream MAY implement nsISeekableStream.
	 *
	 * @param offset
	 *        read starting from this offset into the cached data.  an offset
	 *        beyond the end of the stream has undefined consequences.
	 *
	 * @return non-blocking, buffered input stream.
	 */
	function openInputStream(offset:Float) : NsIInputStream;

	/**
	 * Open non-blocking output stream to cache data.  The returned stream
	 * MAY implement nsISeekableStream.
	 *
	 * If opening an output stream to existing cached data, the data will be
	 * truncated to the specified offset.
	 *
	 * @param offset
	 *        write starting from this offset into the cached data.  an offset
	 *        beyond the end of the stream has undefined consequences.
	 *
	 * @return blocking, buffered output stream.
	 */
	function openOutputStream(offset:Float) : NsIOutputStream;

	/**
		* Stores the Content-Length specified in the HTTP header for this
		* entry. Checked before we write to the cache entry, to prevent ever
		* taking up space in the cache for an entry that we know up front
		* is going to have to be evicted anyway. See bug 588507.
		*/
	var predictedDataSize : Float; // attribute

	/**
	 * Get/set security info on the cache entry for this descriptor.
	 */
	var securityInfo : NsISupports; // attribute

	/**
	 * Get the size of the cache entry data, as stored. This may differ
	 * from the entry's dataSize, if the entry is compressed.
	 */
	var storageDataSize : Int;

	/**
	 * Asynchronously doom an entry. Listener will be notified about the status
	 * of the operation. Null may be passed if caller doesn't care about the
	 * result.
	 */
	//function asyncDoom(listener:NsICacheEntryDoomCallback) : Void;
	function asyncDoom(listener:Dynamic) : Void;

	/**
	 * Methods for accessing meta data.  Meta data is a table of key/value
	 * string pairs.  The strings do not have to conform to any particular
	 * charset, but they must be null terminated.
	 */
	function getMetaDataElement(key:String) : String;
	function setMetaDataElement(key:String, value:String) : Void;

	/**
	 * Obtain the list of metadata keys this entry keeps.
	 *
	 * NOTE: The callback is invoked under the CacheFile's lock.  It means
	 * there should not be made any calls to the entry from the visitor and
	 * if the values need to be processed somehow, it's better to cache them
	 * and process outside the callback.
	 */
	function visitMetaData(visitor:NsICacheEntryMetaDataVisitor) : Void;

	/**
	 * Claims that all metadata on this entry are up-to-date and this entry
	 * now can be delivered to other waiting consumers.
	 *
	 * We need such method since metadata must be delivered synchronously.
	 */
	function metaDataReady() : Void;

	/**
	 * Called by consumer upon 304/206 response from the server.  This marks
	 * the entry content as positively revalidated.
	 * Consumer uses this method after the consumer has returned ENTRY_NEEDS_REVALIDATION
	 * result from onCacheEntryCheck and after successfull revalidation with the server.
	 */
	function setValid() : Void;

	/**
	 * Doom this entry and open a new, empty, entry for write.  Consumer has
	 * to exchange the entry this method is called on for the newly created.
	 * Used on 200 responses to conditional requests.
	 *
	 * @param aMemoryOnly
	 *    - whether the entry is to be created as memory/only regardless how
	 *      the entry being recreated persistence is set
	 * @returns
	 *    - an entry that can be used to write to
	 * @throws
	 *    - NS_ERROR_NOT_AVAILABLE when the entry cannot be from some reason
	 *      recreated for write
	 */
	function recreate(?aMemoryOnly:Bool ) : NsICacheEntry;

	/**
	 * Returns the length of data this entry holds.
	 * @throws
	 *    NS_ERROR_IN_PROGRESS when the write is still in progress.
	 */
	var dataSize : Int;

	/****************************************************************************
	 * The following methods might be added to some nsICacheEntryInternal
	 * interface since we want to remove them as soon as the old cache backend is
	 * completely removed.
	 */

	/**
	 * @deprecated
	 * FOR BACKWARD COMPATIBILITY ONLY
	 * When the old cache backend is eventually removed, this method
	 * can be removed too.
	 *
	 * In the new backend: this method is no-op
	 * In the old backend: this method delegates to nsICacheEntryDescriptor.close()
	 */
	function close() : Void;

	/**
	 * @deprecated
	 * FOR BACKWARD COMPATIBILITY ONLY
	 * Marks the entry as valid so that others can use it and get only readonly
	 * access when the entry is held by the 1st writer.
	 */
	function markValid() : Void;

	/**
	 * @deprecated
	 * FOR BACKWARD COMPATIBILITY ONLY
	 * Marks the entry as valid when write access is acquired.
	 */
	function maybeMarkValid() : Void;

	/**
	 * @deprecated
	 * FOR BACKWARD COMPATIBILITY ONLY / KINDA HACK
	 * @param aWriteAllowed
	 *    Consumer indicates whether write to the entry is allowed for it.
	 *    Depends on implementation how the flag is handled.
	 * @returns
	 *    true when write access is acquired for this entry,
	 *    false otherwise
	 */
	function hasWriteAccess(aWriteAllowed:Bool) : Bool;
}
