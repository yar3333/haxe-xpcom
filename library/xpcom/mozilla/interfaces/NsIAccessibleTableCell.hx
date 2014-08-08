package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleTableCell") extern class NsIAccessibleTableCell extends NsISupports
{
	/**
	 * Return the number of columns occupied by this cell. The result differs from 1 if the specified cell spans multiple columns. Read only.
	 */
	var columnExtent : Long;
	/**
	 * Return an array of column header cells for this cell. Read only.
	 */
	var columnHeaderCells : NsIArray;
	/**
	 * Return column index of this cell. Read only.
	 */
	var columnIndex : Long;
	/**
	 * Return the number of rows occupied by this accessible cell. The result differs from 1 if the specified cell spans multiple rows. Read only.
	 */
	var rowExtent : Long;
	/**
	 * Return an array of row header cells for this cell. Read only.
	 */
	var rowHeaderCells : NsIArray;
	/**
	 * Return row index of this cell. Read only.
	 */
	var rowIndex : Long;
	/**
	 * Return host table accessible. Read only.
	 */
	var table : NsIAccessibleTable;
	
	function isSelected() : Bool;
}
