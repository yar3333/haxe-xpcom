package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAccessibleTable") extern class NsIAccessibleTable extends NsISupports
{
	/**
	 * The caption accessible for the table. For example, html:caption element of html:table element. Read only.
	 */
	var caption : NsIAccessible;
	/**
	 * The number of columns in the table. Read only. Renamed from columns in Gecko 1.9.2
	 */
	var columnCount : Long;
	/**
	 * Read only. Obsolete since Gecko 1.9.2
	 */
	var columnHeader : NsIAccessibleTable;
	/**
	 * The number of rows in the table. Read only. Renamed from rows in Gecko 1.9.2
	 */
	var rowCount : Long;
	/**
	 * Read only. Obsolete since Gecko 1.9.2
	 */
	var rowHeader : NsIAccessibleTable;
	/**
	 * The total number of selected cells. Read only.  Renamed from selectedCellsCount in Gecko 1.9.2
	 */
	var selectedCellCount : ULong;
	/**
	 * An array of selected cells. Read only.
	 */
	var selectedCells : NsIArray;
	/**
	 * The total number of selected columns. Read only.  Renamed from selectedColumnsCount in Gecko 1.9.2
	 */
	var selectedColumnCount : ULong;
	/**
	 * The total number of selected rows. Read only.  Renamed from selectedRowsCount in Gecko 1.9.2
	 */
	var selectedRowCount : ULong;
	/**
	 * The summary description for the table. For example, @summary attribute on html:table element. Read only.
	 */
	var summary : AString;
}
