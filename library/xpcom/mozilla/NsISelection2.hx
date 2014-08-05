package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISelection2") extern class NsISelection2 extends NsISelection
{
	/**
	 * Returns the type of the selection (see nsISelectionController for available constants). Read only.
	 */
	var type : Short;
	
	function GetRangesForInterval(beginNode:NsIDOMNode, beginOffset:PRInt32, endNode:NsIDOMNode, endOffset:PRInt32, allowAdjacent:PRBool, resultCount:PRUint32, results:Array<NsIDOMRange>) : Void;
	function GetRangesForIntervalCOMArray(beginNode:NsIDOMNode, beginOffset:PRInt32, endNode:NsIDOMNode, endOffset:PRInt32, allowAdjacent:PRBool, results:RangeArray) : Void;
	function scrollIntoView(aRegion:Short, aIsSynchronous:Bool, aVPercent:Short, aHPercent:Short) : Void;
}
