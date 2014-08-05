package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIStackFrame") extern class NsIStackFrame extends NsISupports
{
	/**
	 * Read only.
	 */
	var caller : NsIStackFrame;
	/**
	 * Filename location. This is the location that caused the error, which may or may not be a source file location. For example, standard language errors would generally have the same location as their top stack entry. File parsers may put the location of the file they were parsing, and so forth. null indicates "no data" Read only.
	 */
	var filename : String;
	/**
	 * See nsIProgrammingLanguage for a list of language constants. Read only.
	 */
	var language : PRUint32;
	/**
	 * See nsIProgrammingLanguage for a list of language constants. Read only.
	 */
	var languageName : String;
	/**
	 * Valid line numbers begin at '1'. '0' indicates unknown. Read only.
	 */
	var lineNumber : PRInt32;
	/**
	 * The name of the function at this point in the stack. Read only.
	 */
	var name : String;
	/**
	 * The location of this function in filename Read only.
	 */
	var sourceLine : String;
	
	function toString() : String;
}
