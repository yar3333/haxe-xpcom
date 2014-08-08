package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIThreadManager") extern class NsIThreadManager extends NsISupports
{
	/**
	 * The currently executing thread. If the calling thread does not already have a nsIThread associated with it, one is created and associate with the current PRThread. Read only.
	 */
	var currentThread : NsIThread;
	/**
	 * This attribute is true if the calling thread is the main thread of the application process. Read only.
	 */
	var isMainThread : Bool;
	/**
	 * The main thread. Read only.
	 */
	var mainThread : NsIThread;
	
	function getThreadFromPRThread(prthread:PRThread) : NsIThread;
	function newThread(creationFlags:ULong) : NsIThread;
}
