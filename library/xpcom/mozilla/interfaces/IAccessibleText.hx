package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleText") extern class IAccessibleText extends IUnknown
{
	function addSelection(startOffset:Long, endOffset:Long) : HRESULT;
	function attributes(offset:Long, startOffset:{value:Long}, endOffset:{value:Long}, textAttributes:{value:BSTR}) : HRESULT;
	function caretOffset(offset:{value:Long}) : HRESULT;
	function characterExtents(offset:Long, coordType:IA2CoordinateType, x:{value:Long}, y:{value:Long}, width:{value:Long}, height:{value:Long}) : HRESULT;
	function nCharacters(nCharacters:{value:Long}) : HRESULT;
	function newText(newText:{value:IA2TextSegment}) : HRESULT;
	function nSelections(nSelections:{value:Long}) : HRESULT;
	function offsetAtPoint(x:Long, y:Long, coordType:IA2CoordinateType, offset:{value:Long}) : HRESULT;
	function oldText(oldText:{value:IA2TextSegment}) : HRESULT;
	function removeSelection(selectionIndex:Long) : HRESULT;
	function scrollSubstringTo(startIndex:Long, endIndex:Long, scrollType:IA2ScrollType) : HRESULT;
	function scrollSubstringToPoint(startIndex:Long, endIndex:Long, coordinateType:IA2CoordinateType, x:Long, y:Long) : HRESULT;
	function selection(selectionIndex:Long, startOffset:{value:Long}, endOffset:{value:Long}) : HRESULT;
	function setCaretOffset(offset:Long) : HRESULT;
	function setSelection(selectionIndex:Long, startOffset:Long, endOffset:Long) : HRESULT;
	function text(startOffset:Long, endOffset:Long, text:{value:BSTR}) : HRESULT;
	function textAfterOffset(offset:Long, boundaryType:IA2TextBoundaryType, startOffset:{value:Long}, endOffset:{value:Long}, text:{value:BSTR}) : HRESULT;
	function textAtOffset(offset:Long, boundaryType:IA2TextBoundaryType, startOffset:{value:Long}, endOffset:{value:Long}, text:{value:BSTR}) : HRESULT;
	function textBeforeOffset(offset:Long, boundaryType:IA2TextBoundaryType, startOffset:{value:Long}, endOffset:{value:Long}, text:{value:BSTR}) : HRESULT;
}
