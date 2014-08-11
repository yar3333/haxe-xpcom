package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleText") extern class NsIAccessibleText extends NsISupports
{
	/**
	 * Will be treated as the equal to the end of the text.
	 */
	static inline var TEXT_OFFSET_END_OF_TEXT = -1;
	/**
	 * Will be treated as the caret position.
	 */
	static inline var TEXT_OFFSET_CARET = -2;
	
	/**
	 * The current current caret offset. If set < 0 then caret will be placed at the end of the text.
	 */
	var caretOffset : Long;
	/**
	 * Read only.
	 */
	var characterCount : Long;
	/**
	 * Return the text attributes that apply to the entire accessible. Read only.
	 */
	var defaultTextAttributes : NsIPersistentProperties;
	/**
	 * Read only.
	 */
	var selectionCount : Long;
	
	function addSelection(startOffset:Long, endOffset:Long) : Void;
	function getAttributeRange(offset:Long, rangeStartOffset:{value:Long}, rangeEndOffset:{value:Long}) : NsIAccessible;
	function getCharacterAtOffset(offset:Long) : Wchar;
	function getCharacterExtents(offset:Long, x:{value:Long}, y:{value:Long}, width:{value:Long}, height:{value:Long}, coordType:ULong) : Void;
	function getOffsetAtPoint(x:Long, y:Long, coordType:ULong) : Long;
	function getRangeExtents(startOffset:Long, endOffset:Long, x:{value:Long}, y:{value:Long}, width:{value:Long}, height:{value:Long}, coordType:ULong) : Void;
	function getSelectionBounds(selectionNum:Long, startOffset:{value:Long}, endOffset:{value:Long}) : Void;
	function getText(startOffset:Long, endOffset:Long) : AString;
	function getTextAfterOffset(offset:Long, boundaryType:NsAccessibleTextBoundary, startOffset:{value:Long}, endOffset:{value:Long}) : AString;
	function getTextAtOffset(offset:Long, boundaryType:NsAccessibleTextBoundary, startOffset:{value:Long}, endOffset:{value:Long}) : AString;
	function getTextAttributes(includeDefAttrs:Bool, offset:Long, rangeStartOffset:{value:Long}, rangeEndOffset:{value:Long}) : NsIPersistentProperties;
	function getTextBeforeOffset(offset:Long, boundaryType:NsAccessibleTextBoundary, startOffset:{value:Long}, endOffset:{value:Long}) : AString;
	function removeSelection(selectionNum:Long) : Void;
	function scrollSubstringTo(startIndex:Long, endIndex:Long, scrollType:ULong) : Void;
	function scrollSubstringToPoint(startIndex:Long, endIndex:Long, coordinateType:ULong, x:Long, y:Long) : Void;
	function setSelectionBounds(selectionNum:Long, startOffset:Long, endOffset:Long) : Void;
}
