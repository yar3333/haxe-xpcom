package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISelection2") extern class NsISelection2 extends NsISelection
{
	/**
	 * Returns the type of the selection (see nsISelectionController for available constants). Read only.
	 */
	var type : Short;
}
