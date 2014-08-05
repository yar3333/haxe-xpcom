package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICookiePromptService") extern class NsICookiePromptService extends NsISupports
{
	/**
	 * Holds the value for a denying the cookie.
	 */
	static inline var DENY_COOKIE = 0;
	/**
	 * Holds the value for accepting the cookie.
	 */
	static inline var ACCEPT_COOKIE = 1;
	/**
	 * Holds the value for accepting the session cookie.
	 */
	static inline var ACCEPT_SESSION_COOKIE = 2;
	
	function cookieDialog(parent:NsIDOMWindow, cookie:NsICookie, hostname:ACString, cookiesFromHost:Long, changingCookie:Bool, rememberDecision:Bool) : Long;
}
