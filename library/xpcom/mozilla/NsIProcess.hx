package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIProcess") extern class NsIProcess extends NsISupports
{
	/**
	 * The value returned by the process upon exit. This is only valid after the process has exited. Read only.
	 */
	var exitValue : Long;
	/**
	 * true if the process is running, otherwise false. Only accurate if the process was run with blocking disabled. Read only.
	 */
	var isRunning : Bool;
	/**
	 * The location of the executable file on disk. Read only.
	 * Gecko 1.9.1 note 
	 * This attribute is no longer implemented as of Gecko 1.9.1, and is removed entirely in Gecko 1.9.2.
	 */
	var location : NsIFile;
	/**
	 * The process ID of the process. This value is only available after the process has started; in addition, some platforms may not offer this value at all. Read only.
	 */
	var pid : ULong;
	/**
	 * The name of the process. Read only.
	 * Gecko 1.9.1 note 
	 * This attribute is no longer implemented as of Gecko 1.9.1, and is removed entirely in Gecko 1.9.2.
	 */
	var processName : String;
	/**
	 * The process signature. Read only.
	 * Gecko 1.9.1 note 
	 * This attribute is no longer implemented as of Gecko 1.9.1, and is removed entirely in Gecko 1.9.2.
	 */
	var processSignature : ULong;
}