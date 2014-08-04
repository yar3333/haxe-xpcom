package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAccessibleCaretMoveEvent") extern class NsIAccessibleCaretMoveEvent extends NsISupports
{
	/**
	 * Return caret offset. Read only.
	 */
	var caretOffset : Long;
}
