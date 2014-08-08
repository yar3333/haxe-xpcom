package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICommandLine") extern class NsICommandLine extends NsISupports
{
	/**
	 * Number of arguments in the command line. The application name is not part of the command line. Read only.
	 */
	var length : Long;
	/**
	 * There may be a command-line handler which performs a default action if there was no explicit action on the command line (open a default browser window, for example). This flag allows the default action to be prevented.
	 */
	var preventDefault : Bool;
	/**
	 * The type of command line being processed. See State constants. Read only.
	 */
	var state : ULong;
	/**
	 * A window to be targeted by this command line. In most cases, this will be null (xremote will sometimes set this attribute). Read only.
	 */
	var windowContext : NsIDOMWindow;
	/**
	 * The working directory for this command line. Use this property instead of the working directory for the current process, since a redirected command line may have had a different working directory. Read only.
	 */
	var workingDirectory : NsIFile;
	
	function findFlag(aFlag:AString, aCaseSensitive:Bool) : Long;
	function getArgument(aIndex:Long) : AString;
	function handleFlag(aFlag:AString, aCaseSensitive:Bool) : Bool;
	function handleFlagWithParam(aFlag:AString, aCaseSensitive:Bool) : AString;
	function removeArguments(aStart:Long, aEnd:Long) : Void;
	function resolveFile(aArgument:AString) : NsIFile;
	function resolveURI(aArgument:AString) : NsIURI;
}
