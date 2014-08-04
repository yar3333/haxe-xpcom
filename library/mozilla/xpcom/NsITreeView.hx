package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsITreeView") extern class NsITreeView extends NsISupports
{
	/**
	 * The total number of rows in the tree (including the offscreen rows). Read only.
	 */
	var rowCount : Long;
	/**
	 * The selection for this view.
	 */
	var selection : NsITreeSelection;
}
