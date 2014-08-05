package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIEditorIMESupport") extern class NsIEditorIMESupport extends NsISupports
{
	/**
	 * whether this editor has active IME transaction. Read only.
	 */
	var composing : Bool;
}
