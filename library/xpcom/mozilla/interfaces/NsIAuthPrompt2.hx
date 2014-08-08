package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAuthPrompt2") extern class NsIAuthPrompt2 extends NsISupports
{
	/**
	 * The password will be sent unencrypted. No security provided.
	 */
	static inline var LEVEL_NONE = 0;
	/**
	 * Password will be sent encrypted, but the connection is otherwise insecure.
	 */
	static inline var LEVEL_PW_ENCRYPTED = 1;
	/**
	 * The connection, both for password and data, is secure.
	 */
	static inline var LEVEL_SECURE = 2;
	
	function asyncPromptAuth(aChannel:NsIChannel, aCallback:NsIAuthPromptCallback, aContext:NsISupports, level:PRUint32, authInfo:NsIAuthInformation) : NsICancelable;
	function promptAuth(aChannel:NsIChannel, level:PRUint32, authInfo:NsIAuthInformation) : Bool;
}
