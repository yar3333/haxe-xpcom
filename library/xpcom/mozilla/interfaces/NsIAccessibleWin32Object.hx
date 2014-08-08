package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleWin32Object") extern class NsIAccessibleWin32Object extends NsISupports
{
	/**
	 * Handle to the external window implementing IAccessible. Read only. Native code only!
	 */
	var hwnd : VoidPtr;
}
