package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAuthPrompt") extern class NsIAuthPrompt extends NsISupports
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
}
