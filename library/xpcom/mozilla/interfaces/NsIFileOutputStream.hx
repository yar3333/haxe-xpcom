package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFileOutputStream") extern class NsIFileOutputStream extends NsIOutputStream
{
	function init(file:NsIFile, ioFlags:Long, perm:Long, behaviorFlags:Long) : Void;
}
