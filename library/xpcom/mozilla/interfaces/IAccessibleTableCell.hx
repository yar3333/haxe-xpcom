package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleTableCell") extern class IAccessibleTableCell extends IUnknown
{
	function columnExtent(nColumnsSpanned:{value:Long}) : HRESULT;
	function columnHeaderCells(cellAccessibles:{value:IUnknown}, nColumnHeaderCells:{value:Long}) : HRESULT;
	function columnIndex(columnIndex:{value:Long}) : HRESULT;
	function isSelected(isSelected:{value:Bool}) : HRESULT;
	function rowColumnExtents(row:{value:Long}, column:{value:Long}, rowExtents:{value:Long}, columnExtents:{value:Long}, isSelected:{value:Bool}) : HRESULT;
	function rowExtent(nRowsSpanned:{value:Long}) : HRESULT;
	function rowHeaderCells(cellAccessibles:{value:IUnknown}, nRowHeaderCells:{value:Long}) : HRESULT;
	function rowIndex(rowIndex:{value:Long}) : HRESULT;
	function table(table:{value:IUnknown}) : HRESULT;
}
