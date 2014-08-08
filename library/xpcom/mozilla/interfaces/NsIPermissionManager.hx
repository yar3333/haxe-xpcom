package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPermissionManager") extern class NsIPermissionManager extends NsISupports
{
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
