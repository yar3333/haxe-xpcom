package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProcess") extern class NsIProcess extends NsISupports
{
	public static inline function createInstance(executable:NsIFile) : NsIProcess
	{
		var r : NsIProcess = xpcom.Components.classes[cast "@mozilla.org/process/util;1"].createInstance(NsIProcess);
		r.init(executable);
		return r;
	}
	
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
	
	function init(executable:NsIFile) : Void;
	function initWithPid(pid:ULong) : Void;
	function kill() : Void;
	function run(blocking:Bool, args:Array<String>, count:ULong) : Void;
	function runAsync(args:Array<String>, count:ULong, ?observer:NsIObserver, ?holdWeak:Bool) : Void;
	function runw(blocking:Bool, args:Array<Wstring>, count:ULong) : Void;
	function runwAsync(args:Array<Wstring>, count:ULong, ?observer:NsIObserver, ?holdWeak:Bool) : Void;
}
