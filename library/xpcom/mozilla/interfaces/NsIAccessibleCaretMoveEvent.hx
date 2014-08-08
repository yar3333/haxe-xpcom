package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleCaretMoveEvent") extern class NsIAccessibleCaretMoveEvent extends NsISupports
{
	/**
	 * Return caret offset. Read only.
	 */
	var caretOffset : Long;
}
