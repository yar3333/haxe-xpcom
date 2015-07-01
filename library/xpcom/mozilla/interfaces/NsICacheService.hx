package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * Removed from Firefox 38. Use nsICacheStorageService instead.
 */
@:native("Components.interfaces.nsICacheService") extern class NsICacheService extends NsISupports
{
	public static inline function getService() : NsICacheService
	{
		return xpcom.Components.classes[cast "@mozilla.org/network/cache-service;1"].getService(NsICacheService);
	}
	
	function createSession(clientID:String, storagePolicy:NsCacheStoragePolicy, streamBased:Bool) : NsICacheSession;
	function createTemporaryClientID(storagePolicy:NsCacheStoragePolicy) : ACString;
	function evictEntries(storagePolicy:NsCacheStoragePolicy) : Void;
	function init() : Void;
	function shutdown() : Void;
	function visitEntries(visitor:NsICacheVisitor) : Void;
}
