package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFileOutputStream") extern class NsIFileOutputStream extends NsIOutputStream
{
	public static inline function createInstance(file:NsIFile, ioFlags:Long, perm:Long, behaviorFlags:Long) : NsIFileOutputStream
	{
		var r = xpcom.Components.classes[cast "@mozilla.org/network/file-output-stream;1"].createInstance(NsIFileOutputStream);
		r.init(file, ioFlags, perm, behaviorFlags);
		return r;
	}
	
	function init(file:NsIFile, ioFlags:Long, perm:Long, behaviorFlags:Long) : Void;
}
