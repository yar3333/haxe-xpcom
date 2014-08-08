package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleTable2") extern class IAccessibleTable2 extends IUnknown
{
	function caption(accessible:{value:IUnknown}) : HRESULT;
	function cellAt(row:Long, column:Long, cell:{value:IUnknown}) : HRESULT;
	function columnDescription(column:Long, description:{value:BSTR}) : HRESULT;
	function isColumnSelected(column:Long, isSelected:{value:Bool}) : HRESULT;
	function isRowSelected(row:Long, isSelected:{value:Bool}) : HRESULT;
	function modelChange(modelChange:{value:IA2TableModelChange}) : HRESULT;
	function nColumns(columnCount:{value:Long}) : HRESULT;
	function nRows(rowCount:{value:Long}) : HRESULT;
	function nSelectedCells(cellCount:{value:Long}) : HRESULT;
	function nSelectedColumns(columnCount:{value:Long}) : HRESULT;
	function nSelectedRows(rowCount:{value:Long}) : HRESULT;
	function rowDescription(row:Long, description:{value:BSTR}) : HRESULT;
	function selectColumn(column:Long) : HRESULT;
	function selectedCells(cells:{value:IUnknown}, nSelectedCells:{value:Long}) : HRESULT;
	function selectedColumns(selectedColumns:{value:Long}, nColumns:{value:Long}) : HRESULT;
	function selectedRows(selectedRows:{value:Long}, nRows:{value:Long}) : HRESULT;
	function selectRow(row:Long) : HRESULT;
	function summary(accessible:{value:IUnknown}) : HRESULT;
	function unselectColumn(column:Long) : HRESULT;
	function unselectRow(row:Long) : HRESULT;
}
