package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICacheStorageVisitor") extern class NsICacheStorageVisitor extends NsISupports
{
	function onCacheStorageInfo(aEntryCount:Int, aConsumption:Float, aCapacity:Float, aDiskDirectory:NsIFile) : Void;
	function onCacheEntryInfo(aURI:NsIURI, aIdEnhance:ACString, aDataSize:Float, aFetchCount:Int, aLastModifiedTime:Int, aExpirationTime:Int) : Void;
	function onCacheEntryVisitCompleted() : Void;
}