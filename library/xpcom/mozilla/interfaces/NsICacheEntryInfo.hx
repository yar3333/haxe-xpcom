package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICacheEntryInfo") extern class NsICacheEntryInfo extends NsISupports
{
	/**
	 * Get the client id associated with this cache entry. Read only.
	 */
	var clientID : String;
	/**
	 * Get the cache entry data size. Read only.
	 */
	var dataSize : ULong;
	/**
	 * Get the id for the device that stores this cache entry. Read only.
	 */
	var deviceID : String;
	/**
	 * Get the expiration time of the cache entry (in seconds since the Epoch). Read only.
	 */
	var expirationTime : PRUint32;
	/**
	 * Get the number of times the cache entry has been opened. Read only.
	 */
	var fetchCount : Long;
	/**
	 * Get the key identifying the cache entry. Read only.
	 */
	var key : ACString;
	/**
	 * Get the last time the cache entry was opened (in seconds since the Epoch). Read only.
	 */
	var lastFetched : PRUint32;
	/**
	 * Get the last time the cache entry was modified (in seconds since the Epoch). Read only.
	 */
	var lastModified : PRUint32;
	
	function isStreamBased() : Bool;
}
