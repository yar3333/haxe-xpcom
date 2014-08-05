package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICookie") extern class NsICookie extends NsISupports
{
	/**
	 * The cookie collected in a previous session, and its information no longer exists. available
	 */
	static inline var STATUS_UNKNOWN = 0;
	/**
	 * The cookie was accepted.
	 */
	static inline var STATUS_ACCEPTED = 1;
	/**
	 * The cookie was accepted but downgraded to a session cookie.
	 */
	static inline var STATUS_DOWNGRADED = 2;
	/**
	 * The cookie was not accepted.
	 */
	static inline var STATUS_FLAGGED = 3;
	/**
	 * The cookie was rejected.
	 */
	static inline var STATUS_REJECTED = 4;
	/**
	 * The cookie collected in a previous session, and its information no longer available.
	 */
	static inline var POLICY_UNKNOWN = 0;
	/**
	 * The site did not send a compact policy along with the cookie.
	 */
	static inline var POLICY_NONE = 1;
	/**
	 * The site collects identifiable information without user involvement.
	 */
	static inline var POLICY_NO_CONSENT = 2;
	/**
	 * The site collects identifiable information unless user opts out.
	 */
	static inline var POLICY_IMPLICIT_CONSENT = 3;
	/**
	 * The site does not collect identifiable information unless user opts in.
	 */
	static inline var POLICY_EXPLICIT_CONSENT = 4;
	/**
	 * The site does not collect identifiable information.
	 */
	static inline var POLICY_NO_II = 5;
	
	/**
	 * Expiration time in seconds since midnight (00:00:00), January 1, 1970 UTC. expires = 0 represents a session cookie. expires = 1 represents an expiration time earlier than Jan 1, 1970. Read only.
	 */
	var expires : PRUint64;
	/**
	 * The host (possibly fully qualified) of the cookie. Read only.
	 */
	var host : AUTF8String;
	/**
	 * true if the cookie is a domain cookie, false otherwise. Read only.
	 */
	var isDomain : Bool;
	/**
	 * true if the cookie was transmitted over ssl, false otherwise. Read only.
	 */
	var isSecure : Bool;
	/**
	 * The name of the cookie. Read only.
	 */
	var name : ACString;
	/**
	 * The path pertaining to the cookie. Read only.
	 */
	var path : AUTF8String;
	/**
	 * Holds the sites compact policy value. Read only.
	 */
	var policy : NsCookiePolicy;
	/**
	 * Holds the P3P status of cookie. Read only.
	 */
	var status : NsCookieStatus;
	/**
	 * The cookie value. Read only.
	 */
	var value : ACString;
}
