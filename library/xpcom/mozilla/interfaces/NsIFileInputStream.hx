package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFileInputStream") extern class NsIFileInputStream extends NsIInputStream
{
	public static inline function createInstance(file:NsIFile, ioFlags:FileMode, perm:FilePerm, behaviorFlags:FileBehavior) : NsIFileInputStream
	{
		var r : NsIFileInputStream = xpcom.Components.classes[cast "@mozilla.org/network/file-input-stream;1"].createInstance(NsIFileInputStream);
		r.init(file, ioFlags, perm, behaviorFlags);
		return r;
	}
	
	function init(file:NsIFile, ioFlags:FileMode, perm:FilePerm, behaviorFlags:FileBehavior) : Void;
}
