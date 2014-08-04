package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISelectionController") extern class NsISelectionController extends NsISelectionDisplay
{
	/**
	 * This is true if the caret is enabled, visible, and currently blinking. This is still true when the caret is enabled, visible, but in its "off" blink cycle. Read only.
	 */
	var caretVisible : Bool;
}
