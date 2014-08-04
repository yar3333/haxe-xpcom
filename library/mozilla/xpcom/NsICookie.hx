package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsICookie") extern class NsICookie
{
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
