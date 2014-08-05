package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleDocument") extern class NsIAccessibleDocument extends NsISupports
{
	/**
	 * Read only. Obsolete since Gecko 1.9
	 */
	var caretAccessible : NsIAccessible;
	/**
	 * The doc type of the document, as specified in the document. Read only.
	 */
	var docType : AString;
	/**
	 * The nsIDOMDocument interface associated with this document. Read only. Renamed from document in Gecko 2.0
	 */
	var DOMDocument : NsIDOMDocument;
	/**
	 * True if the document is live in an editor. False if the document is being displayed but not edited. If a  is contentEditable, then it has its own document, with isEditable == true. Read only. Obsolete since Gecko 1.9
	 */
	var isEditable : Bool;
	/**
	 * The mime type of the document. Read only.
	 */
	var mimeType : AString;
	/**
	 * The title of the document, as specified in the document. Read only.
	 */
	var title : AString;
	/**
	 * The URL of the document Read only.
	 */
	var URL : AString;
	/**
	 * The nsIDOMWindow that the document resides in. Read only.
	 */
	var window : NsIDOMWindow;
	/**
	 * The window handle for the OS window the document is being displayed in. For example, in Windows you can static cast it to an HWND. Read only. Native code only!
	 */
	var windowHandle : VoidPtr;
}
