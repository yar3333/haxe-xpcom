package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFileOutputStream") extern class NsIFileOutputStream extends NsIOutputStream
{
	/**
	 * 
	 * @param	file
	 * @param	ioFlags
	 * @param	perm
	 * @param	behaviorFlags Only DEFER_OPEN is supported.
	 * @return
	 */
	public static inline function createInstance(file:NsIFile, ioFlags:FileMode, perm:FilePerm, behaviorFlags:FileBehavior) : NsIFileOutputStream
	{
		var r : NsIFileOutputStream = xpcom.Components.classes[cast "@mozilla.org/network/file-output-stream;1"].createInstance(NsIFileOutputStream);
		r.init(file, ioFlags, perm, behaviorFlags);
		return r;
	}
	
	/**
	 * 
	 * @param	file
	 * @param	ioFlags
	 * @param	perm
	 * @param	behaviorFlags Only DEFER_OPEN is supported.
	 * @return
	 */
	public static inline function createInstanceSafe(file:NsIFile, ioFlags:FileMode, perm:FilePerm, behaviorFlags:FileBehavior) : NsIFileOutputStream
	{
		var r : NsIFileOutputStream = xpcom.Components.classes[cast "@mozilla.org/network/safe-file-output-stream;1"].createInstance(NsIFileOutputStream);
		r.init(file, ioFlags, perm, behaviorFlags);
		return r;
	}
	
	/**
	 * 
	 * @param	file
	 * @param	ioFlags
	 * @param	perm
	 * @param	behaviorFlags Only DEFER_OPEN is supported.
	 */
	function init(file:NsIFile, ioFlags:FileMode, perm:FilePerm, behaviorFlags:FileBehavior) : Void;
}
