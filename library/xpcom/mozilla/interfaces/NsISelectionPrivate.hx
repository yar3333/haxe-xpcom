package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISelectionPrivate") extern class NsISelectionPrivate extends NsISupports
{
	static inline var ENDOFPRECEDINGLINE = 0;
	static inline var STARTOFNEXTLINE = 1;
	static inline var TABLESELECTION_NONE = 0;
	static inline var TABLESELECTION_CELL = 1;
	static inline var TABLESELECTION_ROW = 2;
	static inline var TABLESELECTION_COLUMN = 3;
	static inline var TABLESELECTION_TABLE = 4;
	static inline var TABLESELECTION_ALLCELLS = 5;
	
	/**
	 * Frame Offset cache can be used just during calling nsEditor::EndPlaceHolderTransaction. EndPlaceHolderTransaction will give rise to reflow/refreshing view/scroll, and call times of nsTextFrame::GetPointFromOffset whose return value is to be cached. See bug 35296 and bug 199412 Native code only!
	 */
	var canCacheFrameOffset : Bool;
	var interlinePosition : Bool;
	/**
	 * Returns the type of the selection (see nsISelectionController for available constants). Read only.
	 */
	var type : Short;
	
	function addSelectionListener(newListener:NsISelectionListener) : Void;
	function endBatchChanges() : Void;
	function getCachedFrameOffset(aFrame:NsIFrame, inOffset:PRInt32, aPoint:NsPointRef) : Void;
	function getEnumerator() : NsIEnumerator;
	function getFrameSelection() : NsFrameSelection;
	function GetRangesForInterval(beginNode:NsIDOMNode, beginOffset:PRInt32, endNode:NsIDOMNode, endOffset:PRInt32, allowAdjacent:PRBool, resultCount:{value:PRUint32}, results:Array<NsIDOMRange>) : Void;
	function GetRangesForIntervalArray(beginNode:NsINode, beginoffset:PRInt32, endNode:NsINode, endOffset:PRInt32, allowAdjacent:Bool, results:RangeArray) : Void;
	function GetRangesForIntervalCOMArray(beginNode:NsIDOMNode, beginOffset:PRInt32, endNode:NsIDOMNode, endOffset:PRInt32, allowAdjacent:PRBool, results:RangeArray) : Void;
	function getTableSelectionType(range:NsIDOMRange) : Long;
	function removeSelectionListener(listenerToRemove:NsISelectionListener) : Void;
	function scrollIntoView(aRegion:Short, aIsSynchronous:Bool, aVPercent:Short, aHPercent:Short) : Void;
	function setAncestorLimiter(aContent:NsIContent) : Void;
	function setPresShell(aPresShell:NsIPresShell) : Void;
	function setTextRangeStyle(range:NsIDOMRange, textRangeStyle:ConstTextRangeStyleRef) : Void;
	function startBatchChanges() : Void;
	function toStringWithFormat(formatType:String, flags:ULong, wrapColumn:PRInt32) : Wstring;
}
