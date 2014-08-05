package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleSelectable") extern class NsIAccessibleSelectable extends NsISupports
{
	/**
	 * The number of accessible children currently selected. Read only.
	 */
	var selectionCount : Long;
}
