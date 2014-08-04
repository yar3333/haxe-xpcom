package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIException") extern class NsIException extends NsISupports
{
	/**
	 * Valid column numbers begin at 0. There is no unambiguous indicator for unknown. Read only.
	 */
	var columnNumber : PRUint32;
	/**
	 * Arbitary data for the implementation. Read only.
	 */
	var data : NsISupports;
	/**
	 * Filename location. This is the location that caused the error, which may or may not be a source file location. For example, standard language errors would generally have the same location as their top stack entry. File parsers may put the location of the file they were parsing.
	 * null indicates "no data" Read only.
	 */
	var filename : String;
	/**
	 * An inner exception that triggered this, if available. Read only.
	 */
	var inner : NsIException;
	/**
	 * Valid line numbers begin at '1'. '0' indicates unknown. Read only.
	 */
	var lineNumber : PRUint32;
	/**
	 * A stack trace, if available. Read only.
	 */
	var location : NsIStackFrame;
	/**
	 * A custom message set by the thrower. [binaryname(MessageMoz)] Read only.
	 */
	var message : String;
	/**
	 * The name of the error code (A string representation of result) Read only.
	 */
	var name : String;
	/**
	 * The nsresult associated with this exception. Read only.
	 */
	var result : Nsresult;
}
