package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleText") extern class IAccessibleText extends IUnknown
{
	function addSelection(startOffset:Long, endOffset:Long) : HRESULT;
	function attributes(offset:Long, startOffset:Long, endOffset:Long, textAttributes:BSTR) : HRESULT;
	function caretOffset(offset:Long) : HRESULT;
	function characterExtents(offset:Long, coordType:IA2CoordinateType, x:Long, y:Long, width:Long, height:Long) : HRESULT;
	function nCharacters(nCharacters:Long) : HRESULT;
	function newText(newText:IA2TextSegment) : HRESULT;
	function nSelections(nSelections:Long) : HRESULT;
	function offsetAtPoint(x:Long, y:Long, coordType:IA2CoordinateType, offset:Long) : HRESULT;
	function oldText(oldText:IA2TextSegment) : HRESULT;
	function removeSelection(selectionIndex:Long) : HRESULT;
	function scrollSubstringTo(startIndex:Long, endIndex:Long, scrollType:IA2ScrollType) : HRESULT;
	function scrollSubstringToPoint(startIndex:Long, endIndex:Long, coordinateType:IA2CoordinateType, x:Long, y:Long) : HRESULT;
	function selection(selectionIndex:Long, startOffset:Long, endOffset:Long) : HRESULT;
	function setCaretOffset(offset:Long) : HRESULT;
	function setSelection(selectionIndex:Long, startOffset:Long, endOffset:Long) : HRESULT;
	function text(startOffset:Long, endOffset:Long, text:BSTR) : HRESULT;
	function textAfterOffset(offset:Long, boundaryType:IA2TextBoundaryType, startOffset:Long, endOffset:Long, text:BSTR) : HRESULT;
	function textAtOffset(offset:Long, boundaryType:IA2TextBoundaryType, startOffset:Long, endOffset:Long, text:BSTR) : HRESULT;
	function textBeforeOffset(offset:Long, boundaryType:IA2TextBoundaryType, startOffset:Long, endOffset:Long, text:BSTR) : HRESULT;
}
