package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleTableChangeEvent") extern class NsIAccessibleTableChangeEvent extends NsISupports
{
	/**
	 * Return the number of rows or cols. Read only.
	 */
	var numRowsOrCols : Long;
	/**
	 * Return the row or column index. Read only.
	 */
	var rowOrColIndex : Long;
}
