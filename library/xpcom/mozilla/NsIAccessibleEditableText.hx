package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleEditableText") extern class NsIAccessibleEditableText extends NsISupports
{
	/**
	 * Returns an editor associated with the accessible. Read only. Native code only!
	 */
	var associatedEditor : NsIEditor;
	
	function copyText(startPos:Long, endPos:Long) : Void;
	function cutText(startPos:Long, endPos:Long) : Void;
	function deleteText(startPos:Long, endPos:Long) : Void;
	function insertText(text:AString, position:Long) : Void;
	function pasteText(position:Long) : Void;
	function setAttributes(startPos:Long, endPos:Long, attributes:NsISupports) : Void;
	function setTextContents(text:AString) : Void;
}
