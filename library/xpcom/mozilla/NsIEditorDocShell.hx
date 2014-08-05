package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIEditorDocShell") extern class NsIEditorDocShell extends NsISupports
{
	/**
	 * This docShell is editable. Read only.
	 */
	var editable : Bool;
	/**
	 * Gets or sets the editor for the content document.
	 */
	var editor : NsIEditor;
	/**
	 * This docShell has an editing session. Read only.
	 */
	var hasEditingSession : Bool;
	
	function makeEditable(inWaitForUriLoad:Bool) : Void;
}
