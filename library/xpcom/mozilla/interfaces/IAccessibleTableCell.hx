package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleTableCell") extern class IAccessibleTableCell extends IUnknown
{
	function columnExtent(nColumnsSpanned:Long) : HRESULT;
	function columnHeaderCells(cellAccessibles:IUnknown, nColumnHeaderCells:Long) : HRESULT;
	function columnIndex(columnIndex:Long) : HRESULT;
	function isSelected(isSelected:Bool) : HRESULT;
	function rowColumnExtents(row:Long, column:Long, rowExtents:Long, columnExtents:Long, isSelected:Bool) : HRESULT;
	function rowExtent(nRowsSpanned:Long) : HRESULT;
	function rowHeaderCells(cellAccessibles:IUnknown, nRowHeaderCells:Long) : HRESULT;
	function rowIndex(rowIndex:Long) : HRESULT;
	function table(table:IUnknown) : HRESULT;
}
