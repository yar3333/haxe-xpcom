package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPermissionManager") extern class NsIPermissionManager extends NsISupports
{
	/**
	 * Default permission when no entry is found for a host. It should not be used by consumers.
	 */
	static inline var UNKNOWN_ACTION = 0;
	/**
	 * Permission is allowed.
	 */
	static inline var ALLOW_ACTION = 1;
	/**
	 * Permission is denied
	 */
	static inline var DENY_ACTION = 2;
	/**
	 * Permission never expires.
	 */
	static inline var EXPIRE_NEVER = 0;
	/**
	 * Permission expires at end of session.
	 */
	static inline var EXPIRE_SESSION = 1;
	/**
	 * Permission expires at a specified time.
	 */
	static inline var EXPIRE_TIME = 2;
	
	/**
	 * Enumerates all stored permissions. Allows access to nsIPermission objects. Read only.
	 */
	var enumerator : NsISimpleEnumerator;
	
	function add(uri:NsIURI, type:String, permission:PRUint32, ?expireType:PRUint32, ?expireTime:PRInt64) : Void;
	function addFromPrincipal(principal:NsIPrincipal, type:String, permission:PRUint32, ?expireType:PRUint32, ?expireTime:PRInt64) : Void;
	function remove(host:AUTF8String, type:String) : Void;
	function removeFromPrincipal(principal:NsIPrincipal, type:String) : Void;
	function removeAll() : Void;
	function testExactPermission(uri:NsIURI, type:String) : PRUint32;
	function testExactPermissionFromPrincipal(principal:NsIPrincipal, type:String) : PRUint32;
	function testPermission(uri:NsIURI, type:String) : PRUint32;
	function testPermissionFromPrincipal(principal:NsIPrincipal, type:String) : PRUint32;
}
