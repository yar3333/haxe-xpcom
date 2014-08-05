package xpcom.mozilla;

import xpcom.types.*;

@:native("nsILoginManagerCrypto") extern class NsILoginManagerCrypto extends NsISupports
{
	/**
	 * Current login state of the token used for encryption. If the user is not logged in, performing a crypto operation will result in a master password prompt. Read only.
	 */
	var isLoggedIn : Bool;
	/**
	 * true when a master password prompt is being displayed. Read only.
	 */
	var uiBusy : Bool;
}
