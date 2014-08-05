package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFileOutputStream") extern class NsIFileOutputStream extends NsIOutputStream
{
	function init(file:NsIFile, ioFlags:Long, perm:Long, behaviorFlags:Long) : Void;
}
