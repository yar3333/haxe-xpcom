package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsICacheEntryDescriptor") extern class NsICacheEntryDescriptor extends NsICacheEntryInfo
{
	/**
	 * Get the access granted to this descriptor. See nsICache for the definitions of the access modes and a thorough description of their corresponding meanings. Read only.
	 */
	var accessGranted : NsCacheAccessMode;
	/**
	 * Get or set the cache data element. This will fail if the cache entry is stream based. The cache entry holds a strong reference to this object. The object will be released when the cache entry is destroyed.
	 */
	var cacheElement : NsISupports;
	/**
	 * Get the disk file associated with the cache entry. Read only.
	 */
	var file : NsIFile;
	/**
	 * Stores the Content-Length specified in the HTTP header for this entry. Checked before we write to the cache entry, to prevent ever taking up space in the cache for an entry that we know up front is going to have to be evicted anyway. See  eviction size">bug 588507.
	 */
	var predictedDataSize : PRInt64;
	/**
	 * Get or set security info on the cache entry for this descriptor. This fails if the storage policy is not STORE_IN_MEMORY.
	 */
	var securityInfo : NsISupports;
	/**
	 * Get or set the storage policy of the cache entry. See nsICache for the definitions of the storage policies.
	 */
	var storagePolicy : NsCacheStoragePolicy;
}
