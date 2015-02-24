package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFileOutputStream") extern class NsIFileOutputStream extends NsIOutputStream
{
	public static inline function createInstance(file:NsIFile, ioFlags:Long, perm:Long, behaviorFlags:Long) : NsIFileOutputStream
	{
		var r : NsIFileOutputStream = xpcom.Components.classes[cast "@mozilla.org/network/file-output-stream;1"].createInstance(NsIFileOutputStream);
		r.init(file, ioFlags, perm, behaviorFlags);
		return r;
	}
	
	public static inline function createInstanceSafe(file:NsIFile, ioFlags:Long, perm:Long, behaviorFlags:Long) : NsIFileOutputStream
	{
		var r : NsIFileOutputStream = xpcom.Components.classes[cast "@mozilla.org/network/safe-file-output-stream;1"].createInstance(NsIFileOutputStream);
		r.init(file, ioFlags, perm, behaviorFlags);
		return r;
	}
	
	/**
	 * See the same constant in <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIFileInputStream" title="">nsIFileInputStream</a></code>. The deferred open will be performed when one of the following is called:
	 * <ul>
	 * <li>Seek()</li>
	 * <li>Tell()</li>
	 * <li>Write()</li>
	 * <li>Flush()</li>
	 * </ul>
	 * <p>DEFER_OPEN is useful if we use the stream on a background thread, so that the opening and possible stating of the file happens there as well.</p>
	 * <div class="note">
	 * <strong>Note:</strong> Using this flag results in the file not being opened during the call to init(). This means that any errors that might happen when this flag is not set would happen during the first write, and if the file is to be created, it will not appear on the disk until the first write.</div>
	 */
	static inline var DEFER_OPEN  = 1<<0;
	
	function init(file:NsIFile, ioFlags:Long, perm:Long, behaviorFlags:Long) : Void;
}
