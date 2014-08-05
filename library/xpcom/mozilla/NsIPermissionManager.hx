package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIPermissionManager") extern class NsIPermissionManager
{
	/**
	 * Enumerates all stored permissions. Allows access to nsIPermission objects. Read only.
	 */
	var enumerator : NsISimpleEnumerator;
}
