package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsICookie2") extern class NsICookie2
{
	/**
	 * The creation time of the cookie, in microseconds since midnight (00:00:00), January 1, 1970 UTC. Read only.
	 */
	var creationTime : PRInt64;
	/**
	 * The actual expiry time of the cookie, in seconds since midnight (00:00:00), January 1, 1970 UTC. (where 0 does not represent a session cookie). Read only.
	 */
	var expiry : PRInt64;
	/**
	 * true if the cookie is an http only cookie. Read only.
	 */
	var isHttpOnly : Bool;
	/**
	 * true if the cookie is a session cookie. Note: That expiry time will also be honored for session cookies; thus, whichever is the more restrictive of the two will take effect. Read only.
	 */
	var isSession : Bool;
	/**
	 * The last time the cookie was accessed, in microseconds since midnight (00:00:00) on January 1, 1970 UTC. "Accessed" means creation, modification, or reading by the server. Note: This time may be approximate. Read only.
	 */
	var lastAccessed : PRInt64;
	/**
	 * The host (possibly fully qualified) of the cookie, without a leading dot to represent if it is a domain cookie. Read only.
	 */
	var rawHost : AUTF8String;
}
