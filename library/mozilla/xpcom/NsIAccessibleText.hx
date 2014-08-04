package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAccessibleText") extern class NsIAccessibleText extends NsISupports
{
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
}
