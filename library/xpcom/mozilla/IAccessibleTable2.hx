package xpcom.mozilla;

import xpcom.types.*;

@:native("IAccessibleTable2") extern class IAccessibleTable2 extends IUnknown
{
	function caption(accessible:IUnknown) : HRESULT;
	function cellAt(row:Long, column:Long, cell:IUnknown) : HRESULT;
	function columnDescription(column:Long, description:BSTR) : HRESULT;
	function isColumnSelected(column:Long, isSelected:Bool) : HRESULT;
	function isRowSelected(row:Long, isSelected:Bool) : HRESULT;
	function modelChange(modelChange:IA2TableModelChange) : HRESULT;
	function nColumns(columnCount:Long) : HRESULT;
	function nRows(rowCount:Long) : HRESULT;
	function nSelectedCells(cellCount:Long) : HRESULT;
	function nSelectedColumns(columnCount:Long) : HRESULT;
	function nSelectedRows(rowCount:Long) : HRESULT;
	function rowDescription(row:Long, description:BSTR) : HRESULT;
	function selectColumn(column:Long) : HRESULT;
	function selectedCells(cells:IUnknown, nSelectedCells:Long) : HRESULT;
	function selectedColumns(selectedColumns:Long, nColumns:Long) : HRESULT;
	function selectedRows(selectedRows:Long, nRows:Long) : HRESULT;
	function selectRow(row:Long) : HRESULT;
	function summary(accessible:IUnknown) : HRESULT;
	function unselectColumn(column:Long) : HRESULT;
	function unselectRow(row:Long) : HRESULT;
}
