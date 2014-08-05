package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleWin32Object") extern class NsIAccessibleWin32Object extends NsISupports
{
	/**
	 * Handle to the external window implementing IAccessible. Read only. Native code only!
	 */
	var hwnd : VoidPtr;
}
