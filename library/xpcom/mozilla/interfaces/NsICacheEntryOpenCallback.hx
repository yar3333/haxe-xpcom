package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICacheEntryOpenCallback") extern class NsICacheEntryOpenCallback extends NsISupports
{
	/**
	 * State of the entry determined by onCacheEntryCheck.
	 *
	 * ENTRY_WANTED - the consumer is interested in the entry, we will pass it.
	 * RECHECK_AFTER_WRITE_FINISHED - the consumer cannot use the entry while data is
	 *    still being written and wants to check it again after the current write is
	 *    finished. This actually prevents concurrent read/write and is used with
	 *    non-resumable HTTP responses.
	 * ENTRY_NEEDS_REVALIDATION - entry needs to be revalidated first with origin server,
	 *    this means the loading channel will decide whether to use the entry content
	 *    as is after it gets a positive response from the server about validity of the
	 *    content ; when a new content needs to be loaded from the server, the loading
	 *    channel opens a new entry with OPEN_TRUNCATE flag which dooms the one
	 *    this check has been made for.
	 * ENTRY_NOT_WANTED - the consumer is not interested in the entry, we will not pass it.
	 */
	static var ENTRY_WANTED : Int;
	static var RECHECK_AFTER_WRITE_FINISHED : Int;
	static var ENTRY_NEEDS_REVALIDATION : Int;
	static var ENTRY_NOT_WANTED : Int;

	/**
	 * Callback to perform any validity checks before the entry should be used.
	 * Called before onCacheEntryAvailable callback, depending on the result it
	 * may be called more then one time.
	 *
	 * This callback is ensured to be called on the same thread on which asyncOpenURI
	 * has been called, unless nsICacheStorage.CHECK_MULTITHREADED flag has been specified.
	 * In that case this callback can be invoked on any thread, usually it is the cache I/O
	 * or cache management thread.
	 *
	 * IMPORTANT NOTE: 
	 * This callback may be invoked sooner then respective asyncOpenURI call exits.
	 *
	 * @param aEntry
	 *    An entry to examine.  Consumer has a chance to decide whether the
	 *    entry is valid or not.
	 * @param aApplicationCache
	 *    Optional, application cache the entry has been found in, if any.
	 * @return
	 *    State of the entry, see the constants just above.
	 */
	function onCacheEntryCheck(aEntry:NsICacheEntry, aApplicationCache:NsIApplicationCache) : Int;
	
	/**
	 * Callback giving actual result of asyncOpenURI.  It may give consumer the cache 
	 * entry or a failure result when it's not possible to open it from some reason.
	 * This callback is ensured to be called on the same thread on which asyncOpenURI
	 * has been called.
	 *
	 * IMPORTANT NOTE: 
	 * This callback may be invoked sooner then respective asyncOpenURI call exits.
	 *
	 * @param aEntry
	 *    The entry bound to the originally requested URI.  May be null when
	 *    loading from a particular application cache and the URI has not
	 *    been found in that application cache.
	 * @param aNew
	 *    Whether no data so far has been stored for this entry, i.e. reading
	 *    it will just fail.  When aNew is true, a server request should be
	 *    made and data stored to this new entry.
	 * @param aApplicationCache
	 *    When an entry had been found in an application cache, this is the
	 *    given application cache.  It should be associated with the loading
	 *    channel.
	 * @param aResult
	 *    Result of the request.  This may be a failure only when one of these
	 *    issues occur:
	 *    - the cache storage service could not be started due to some unexpected
	 *      faulure
	 *    - there is not enough disk space to create new entries
	 *    - cache entry was not found in a given application cache
	 */
	function onCacheEntryAvailable(aEntry:NsICacheEntry, aNew:Bool, aApplicationCache:NsIApplicationCache, aResult:Nsresult) : Void;
}