package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("mozIStorageError") extern class MozIStorageError
{
	/**
	 * A human readable error string with details; this may be null if no details are available. Read only.
	 */
	var message : AUTF8String;
	/**
	 * One of the error code values listed under Constants on this page.
	 */
	var result : Long;
}
