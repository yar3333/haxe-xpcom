package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIApplicationCacheService") extern class NsIApplicationCacheService extends NsISupports
{
	function cacheOpportunistically(cache:NsIApplicationCache, key:ACString) : Void;
	function chooseApplicationCache(key:ACString) : NsIApplicationCache;
	function createApplicationCache(group:ACString) : NsIApplicationCache;
	function deactivateGroup(group:ACString) : Void;
	function getActiveCache(group:ACString) : NsIApplicationCache;
	function getApplicationCache(clientID:ACString) : NsIApplicationCache;
	function getGroups(?count:ULong, groupIDs:Array<String>) : Void;
}
