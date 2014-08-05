package xpcom.mozilla;

import xpcom.types.*;

@:native("nsILoginManagerStorage") extern class NsILoginManagerStorage extends NsISupports
{
	/**
	 * true when a master password prompt is being shown. Read only.
	 */
	var uiBusy : Bool;
}
