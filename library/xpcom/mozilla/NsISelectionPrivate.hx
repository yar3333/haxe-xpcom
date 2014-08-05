package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISelectionPrivate") extern class NsISelectionPrivate extends NsISupports
{
	/**
	 *  
	 */
	static inline var ENDOFPRECEDINGLINE = 0;
	/**
	 *  
	 */
	static inline var STARTOFNEXTLINE = 1;
	/**
	 *  
	 */
	static inline var TABLESELECTION_NONE = 0;
	/**
	 *  
	 */
	static inline var TABLESELECTION_CELL = 1;
	/**
	 *  
	 */
	static inline var TABLESELECTION_ROW = 2;
	/**
	 *  
	 */
	static inline var TABLESELECTION_COLUMN = 3;
	/**
	 *  
	 */
	static inline var TABLESELECTION_TABLE = 4;
	/**
	 *  
	 */
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
}
