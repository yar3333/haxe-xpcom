package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAppShell") extern class NsIAppShell extends NsISupports
{
	/**
	 * The current event loop nesting level. Read only.
	 */
	var eventloopNestingLevel : ULong;
	
	function Create(argc:{value:Int}, argv:{value:String}) : Void;
	function DispatchNativeEvent(aRealEvent:PRBool, aEvent:VoidPtr) : Void;
	function exit() : Void;
	function favorPerformanceHint(favorPerfOverStarvation:Bool, starvationDelay:ULong) : Void;
	function GetNativeEvent(aRealEvent:PRBoolRef, aEvent:VoidPtrRef) : Void;
	function ListenToEventQueue(aQueue:NsIEventQueue, aListen:PRBool) : Void;
	function resumeNative() : Void;
	function run() : Void;
	function runInStableState(aRunnable:NsIRunnable) : Void;
	function Spindown() : Void;
	function Spinup() : Void;
	function suspendNative() : Void;
}
