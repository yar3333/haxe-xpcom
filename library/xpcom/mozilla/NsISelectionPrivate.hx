package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISelectionPrivate") extern class NsISelectionPrivate extends NsISupports
{
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
