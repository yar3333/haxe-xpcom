package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAuthPrompt") extern class NsIAuthPrompt extends NsISupports
{
	/**
	 * Never saves the password.
	 */
	static inline var SAVE_PASSWORD_NEVER = 0;
	/**
	 * Saves the password for the session.
	 */
	static inline var SAVE_PASSWORD_FOR_SESSION = 1;
	/**
	 * Saves the password permanently.
	 */
	static inline var SAVE_PASSWORD_PERMANENTLY = 2;
	
	function prompt(dialogTitle:Wstring, text:Wstring, passwordRealm:Wstring, savePassword:PRUint32, defaultText:Wstring, result:{value:Wstring}) : Bool;
	function promptPassword(dialogTitle:Wstring, text:Wstring, passwordRealm:Wstring, savePassword:PRUint32, pwd:{value:Wstring}) : Bool;
	function promptUsernameAndPassword(dialogTitle:Wstring, text:Wstring, passwordRealm:Wstring, savePassword:PRUint32, user:{value:Wstring}, pwd:{value:Wstring}) : Bool;
}
