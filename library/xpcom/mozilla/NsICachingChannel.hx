package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICachingChannel") extern class NsICachingChannel extends NsICacheInfoChannel
{
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
