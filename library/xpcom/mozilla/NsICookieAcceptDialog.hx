package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICookieAcceptDialog") extern class NsICookieAcceptDialog extends NsISupports
{
	/**
	 * Value for accepting a cookie object.
	 */
	static inline var ACCEPT_COOKIE = 0;
	/**
	 * Value for remembering a decision.
	 */
	static inline var REMEMBER_DECISION = 1;
	/**
	 * Value for holding the hostname object.
	 */
	static inline var HOSTNAME = 2;
	/**
	 * Value for holding the cookie from the host.
	 */
	static inline var COOKIESFROMHOST = 3;
	/**
	 * Value for changing cookie.
	 */
	static inline var CHANGINGCOOKIE = 4;
}
