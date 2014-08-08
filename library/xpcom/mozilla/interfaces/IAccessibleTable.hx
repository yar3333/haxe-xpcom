package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleTable") extern class IAccessibleTable extends IUnknown
{
	function accessibleAt(row:Long, column:Long, accessible:{value:IUnknown}) : HRESULT;
	function caption(accessible:{value:IUnknown}) : HRESULT;
	function childIndex(rowIndex:Long, columnIndex:Long, cellIndex:{value:Long}) : HRESULT;
	function columnDescription(column:Long, description:{value:BSTR}) : HRESULT;
	function columnExtentAt(row:Long, column:Long, nColumnsSpanned:{value:Long}) : HRESULT;
	function columnHeader(accessibleTable:{value:IAccessibleTable}, startingRowIndex:{value:Long}) : HRESULT;
	function columnIndex(cellIndex:Long, columnIndex:{value:Long}) : HRESULT;
	function isColumnSelected(column:Long, isSelected:{value:Bool}) : HRESULT;
	function isRowSelected(row:Long, isSelected:{value:Bool}) : HRESULT;
	function isSelected(row:Long, column:Long, isSelected:{value:Bool}) : HRESULT;
	function modelChange(modelChange:{value:IA2TableModelChange}) : HRESULT;
	function nColumns(columnCount:{value:Long}) : HRESULT;
	function nRows(rowCount:{value:Long}) : HRESULT;
	function nSelectedChildren(cellCount:{value:Long}) : HRESULT;
	function nSelectedColumns(columnCount:{value:Long}) : HRESULT;
	function nSelectedRows(rowCount:{value:Long}) : HRESULT;
	function rowColumnExtentsAtIndex(index:Long, row:{value:Long}, column:{value:Long}, rowExtents:{value:Long}, columnExtents:{value:Long}, isSelected:{value:Bool}) : HRESULT;
	function rowDescription(row:Long, description:{value:BSTR}) : HRESULT;
	function rowExtentAt(row:Long, column:Long, nRowsSpanned:{value:Long}) : HRESULT;
	function rowHeader(accessibleTable:{value:IAccessibleTable}, startingColumnIndex:{value:Long}) : HRESULT;
	function rowIndex(cellIndex:Long, rowIndex:{value:Long}) : HRESULT;
	function selectColumn(column:Long) : HRESULT;
	function selectedChildren(maxChildren:Long, children:{value:Long}, nChildren:{value:Long}) : HRESULT;
	function selectedColumns(maxColumns:Long, columns:{value:Long}, nColumns:{value:Long}) : HRESULT;
	function selectedRows(maxRows:Long, rows:{value:Long}, nRows:{value:Long}) : HRESULT;
	function selectRow(row:Long) : HRESULT;
	function summary(accessible:{value:IUnknown}) : HRESULT;
	function unselectColumn(column:Long) : HRESULT;
	function unselectRow(row:Long) : HRESULT;
}
