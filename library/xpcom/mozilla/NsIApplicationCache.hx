package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIApplicationCache") extern class NsIApplicationCache extends NsISupports
{
	/**
	 * true if the cache is the active cache for this group, otherwise false. Read only.
	 */
	var active : Bool;
	/**
	 * The client ID for this application cache. Clients can open a session with nsICacheService.createSession() using this client ID and a storage policy of STORE_OFFLINE to access this cache. Read only.
	 */
	var clientID : ACString;
	/**
	 * The group ID for this cache group. This is the URI of the cache manifest file. Read only.
	 */
	var groupID : ACString;
	/**
	 * The disk usage of the application cache, in bytes. Read only.
	 */
	var usage : ULong;
}
