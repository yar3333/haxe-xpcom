package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIScriptError") extern class NsIScriptError extends NsIConsoleMessage
{
	public static inline function createInstance() : NsIScriptError return Components.Constructor("@mozilla.org/scripterror;1", Components.interfaces.nsIScriptError);
	
	/**
	 * A string indicating the category of error that occurred See Categories for a list. Read only.
	 */
	var category : String;
	/**
	 * The column number where the error occurred. This is used to draw the arrow pointing to the problem character. Read only.
	 */
	var columnNumber : PRUint32;
	/**
	 * The error message in a string format without any context/line number information.
	 * Note: nsIConsoleMessage.message will return the error formatted with file/line information.
	 * Read only.
	 */
	var errorMessage : AString;
	/**
	 * Flags; see Flag constants for a list. Read only.
	 */
	var flags : PRUint32;
	/**
	 * The inner window ID with which the error is associated. This is zero if the error was initialized by calling nsIScriptError.init() instead of initWithWindowID(). Read only.
	 */
	var innerWindowID : ULongLong;
	/**
	 * The number of the line where the error occurred. Read only.
	 */
	var lineNumber : PRUint32;
	/**
	 * The window ID with which the error is associated. This is zero if the error was initialized by calling nsIScriptError.init() instead of initWithWindowID(). Read only.
	 */
	var outerWindowID : ULongLong;
	/**
	 * The line from the file specified by sourceName. You are responsible for providing that line. You may pass null if you are lazy; that will prevent showing the source line in JavaScript Console. Read only.
	 */
	var sourceLine : AString;
	/**
	 * The URL of the file in which the error occurred. This will be a hyperlink in the JavaScript Console, so you should use a real URL. You may pass null if it's not applicable. Read only.
	 */
	var sourceName : AString;
	/**
	 * Elapsed time, in milliseconds, from a platform-specific zero time to the time the message was created. Read only.
	 */
	var timeStamp : LongLong;
}
