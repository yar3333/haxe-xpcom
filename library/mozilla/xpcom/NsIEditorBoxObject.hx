package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIEditorBoxObject") extern class NsIEditorBoxObject
{
	/**
	 * Read only. Obsolete since Gecko 1.9 The nsIDocShell object that manages the contained document. The editor.xml binding uses this property to gain access to the webNavigation, contentDocument, contentWindow, webBrowserFind, editingSession and commandManager properties.
	 */
	var docShell : NsIDocShell;
}
