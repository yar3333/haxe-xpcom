package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICachingChannel") extern class NsICachingChannel extends NsICacheInfoChannel
{
	/**
	 *  <p>This load flag inhibits fetching from the net. An error of NS_ERROR_DOCUMENT_NOT_CACHED will be sent to the listener's onStopRequest if network IO is necessary to complete the request.</p> <p>This flag can be used to find out whether fetching this URL would cause validation of the cache entry via the network.</p> Combining this flag with LOAD_BYPASS_LOCAL_CACHE will cause all loads to fail. This flag differs from LOAD_ONLY_FROM_CACHE in that this flag fails the load if validation is required while LOAD_ONLY_FROM_CACHE skips validation where possible. 
	 */
	static inline var LOAD_NO_NETWORK_IO = 1 << 26;
	/**
	 *  <p>This load flag causes the offline cache to be checked when fetching a request. It will be set automatically if the browser is offline.</p> This flag will not be transferred through a redirect. 
	 */
	static inline var LOAD_CHECK_OFFLINE_CACHE = 1 << 27;
	/**
	 * This load flag causes the local cache to be skipped when fetching a request. Unlike LOAD_BYPASS_CACHE, it does not force an end-to-end load (That is, it does not affect proxy caches). 
	 */
	static inline var LOAD_BYPASS_LOCAL_CACHE = 1 << 28;
	/**
	 * This load flag causes the local cache to be skipped if the request would otherwise block waiting to access the cache. 
	 */
	static inline var LOAD_BYPASS_LOCAL_CACHE_IF_BUSY = 1 << 29;
	/**
	 * This load flag inhibits fetching from the net if the data in the cache has been evicted. An error of NS_ERROR_DOCUMENT_NOT_CACHED will be sent to the listener's onStopRequest in this case. This flag is set automatically when the application is offline.
	 */
	static inline var LOAD_ONLY_FROM_CACHE = 1 << 30;
	/**
	 *  <p>This load flag controls what happens when a document would be loaded from the cache to satisfy a call to AsyncOpen. If this attribute is set to true, then the document will not be loaded from the cache. A stream listener can check <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsICachingChannel#isFromCache()">isFromCache()</a></code> to determine if the AsyncOpen will actually result in data being streamed.</p> If this flag has been set, and the request can be satisfied via the cache, then the OnDataAvailable events will be skipped. The listener will only see OnStartRequest followed by OnStopRequest.
	 */
	static inline var LOAD_ONLY_IF_MODIFIED = 1 << 31;
	
	/**
	 * Specifies whether or not the data should be cached to a file. This may fail if the disk cache is not present. The value of this attribute is usually only settable during the processing of a channel's OnStartRequest. The default value of this attribute depends on the particular implementation of nsICachingChannel.
	 */
	var cacheAsFile : Bool;
	/**
	 * Get the "file" where the cached data can be found. This is valid for as long as a reference to the cache token is held. This may return an error if cacheAsFile is false. Read only.
	 */
	var cacheFile : NsIFile;
	/**
	 * Specifies whether or not the data should be placed in the offline cache, in addition to normal memory/disk caching. This may fail if the offline cache is not present. The value of this attribute should be set before opening the channel.
	 */
	var cacheForOfflineUse : Bool;
	/**
	 * Uniquely identifies the data in the cache for this channel. Holding a reference to this key does not prevent the cached data from being removed. A cache key retrieved from a particular instance of nsICachingChannel could be set on another instance of nsICachingChannel provided the underlying implementations are compatible and provided the new channel instance was created with the same URI. The implementation of nsICachingChannel would be expected to use the cache entry identified by the cache token. Depending on the value of nsIRequest.loadFlags(), the cache entry may be validated, overwritten, or simply read. The cache key may be null indicating that the URI of the channel is sufficient to locate the same cache entry. Setting a null cache key is likewise valid.
	 */
	var cacheKey : NsISupports;
	/**
	 * Uniquely identifies the data in the cache. Holding a reference to this token prevents the cached data from being removed. A cache token retrieved from a particular instance of nsICachingChannel could be set on another instance of nsICachingChannel provided the underlying implementations are compatible. The implementation of nsICachingChannel would be expected to only read from the cache entry identified by the cache token and not try to validate it. The cache token can be QueryInterface'd to a nsICacheEntryInfo if more detail about the cache entry is needed. For example, expiration time.
	 */
	var cacheToken : NsISupports;
	/**
	 * The session into which to cache offline data. If not specified, data will be placed in "HTTP-offline".
	 */
	var offlineCacheClientID : ACString;
	/**
	 * The same as cacheToken but accessing the offline app cache token if there is any.  Exceptions thrown  NS_ERROR_NOT_AVAILABLE When there is not offline cache token.
	 */
	var offlineCacheToken : NsISupports;
}
