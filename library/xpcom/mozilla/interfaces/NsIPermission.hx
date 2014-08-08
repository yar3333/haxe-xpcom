package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPermission") extern class NsIPermission extends NsISupports
{
	/**
	 * The permission to set: allow, deny, or unknown (which is the default). See nsIPermissionManager.Permission_type_constants for allowed values. Read only.
	 */
	var capability : PRUint32;
	/**
	 * The expiration time of the permission measured in milliseconds since 1970 Jan 1 0:00:00. Read only.
	 */
	var expireTime : PRInt64;
	/**
	 * The expiration type of the permission: on session termination, on a specified time, or never. Constants are defined in nsIPermissionManager.Permission_expiration_constants. Read only.
	 */
	var expireType : PRUint32;
	/**
	 * The host, that is URI, on which the permission is applied. Read only.
	 */
	var host : AUTF8String;
	/**
	 * The type of permission: cookie, image, and so on. This is a case-sensitive string. This string is specified by the consumer when adding a permission via nsIPermissionManager Read only.
	 */
	var type : ACString;
}
