package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICacheService") extern class NsICacheService extends NsISupports
{
	function createSession(clientID:String, storagePolicy:NsCacheStoragePolicy, streamBased:Bool) : NsICacheSession;
	function createTemporaryClientID(storagePolicy:NsCacheStoragePolicy) : ACString;
	function evictEntries(storagePolicy:NsCacheStoragePolicy) : Void;
	function init() : Void;
	function shutdown() : Void;
	function visitEntries(visitor:NsICacheVisitor) : Void;
}
