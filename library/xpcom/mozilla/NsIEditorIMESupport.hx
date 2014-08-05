package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIEditorIMESupport") extern class NsIEditorIMESupport extends NsISupports
{
	/**
	 * whether this editor has active IME transaction. Read only.
	 */
	var composing : Bool;
	
	function beginComposition(aReply:NsTextEventReplyPtr) : Void;
	function endComposition() : Void;
	function forceCompositionEnd() : Void;
	function getPreferredIMEState(aState:ULong) : Void;
	function getQueryCaretRect(aReply:NsQueryCaretRectEventReplyPtr) : Void;
	function getReconversionString(aReply:NsReconversionEventReplyPtr) : Void;
	function notifyIMEOnBlur() : Void;
	function notifyIMEOnFocus() : Void;
	function queryComposition(aReply:NsTextEventReplyPtr) : Void;
	function setCompositionString(aCompositionString:DOMString, aTextRange:NsIPrivateTextRangeListPtr, aReply:NsTextEventReplyPtr) : Void;
}
