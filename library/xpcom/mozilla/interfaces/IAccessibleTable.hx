package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleTable") extern class IAccessibleTable extends IUnknown
{
	function accessibleAt(row:Long, column:Long, accessible:IUnknown) : HRESULT;
	function caption(accessible:IUnknown) : HRESULT;
	function childIndex(rowIndex:Long, columnIndex:Long, cellIndex:Long) : HRESULT;
	function columnDescription(column:Long, description:BSTR) : HRESULT;
	function columnExtentAt(row:Long, column:Long, nColumnsSpanned:Long) : HRESULT;
	function columnHeader(accessibleTable:IAccessibleTable, startingRowIndex:Long) : HRESULT;
	function columnIndex(cellIndex:Long, columnIndex:Long) : HRESULT;
	function isColumnSelected(column:Long, isSelected:Bool) : HRESULT;
	function isRowSelected(row:Long, isSelected:Bool) : HRESULT;
	function isSelected(row:Long, column:Long, isSelected:Bool) : HRESULT;
	function modelChange(modelChange:IA2TableModelChange) : HRESULT;
	function nColumns(columnCount:Long) : HRESULT;
	function nRows(rowCount:Long) : HRESULT;
	function nSelectedChildren(cellCount:Long) : HRESULT;
	function nSelectedColumns(columnCount:Long) : HRESULT;
	function nSelectedRows(rowCount:Long) : HRESULT;
	function rowColumnExtentsAtIndex(index:Long, row:Long, column:Long, rowExtents:Long, columnExtents:Long, isSelected:Bool) : HRESULT;
	function rowDescription(row:Long, description:BSTR) : HRESULT;
	function rowExtentAt(row:Long, column:Long, nRowsSpanned:Long) : HRESULT;
	function rowHeader(accessibleTable:IAccessibleTable, startingColumnIndex:Long) : HRESULT;
	function rowIndex(cellIndex:Long, rowIndex:Long) : HRESULT;
	function selectColumn(column:Long) : HRESULT;
	function selectedChildren(maxChildren:Long, children:Long, nChildren:Long) : HRESULT;
	function selectedColumns(maxColumns:Long, columns:Long, nColumns:Long) : HRESULT;
	function selectedRows(maxRows:Long, rows:Long, nRows:Long) : HRESULT;
	function selectRow(row:Long) : HRESULT;
	function summary(accessible:IUnknown) : HRESULT;
	function unselectColumn(column:Long) : HRESULT;
	function unselectRow(row:Long) : HRESULT;
}
