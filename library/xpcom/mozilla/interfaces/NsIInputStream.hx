package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIInputStream") extern class NsIInputStream extends NsISupports
{
	@:overload(function() : ULong {})
	function available() : ULongLong;
	function close() : Void;
	function isNonBlocking() : Bool;
	function read(aBuf:CharPtr, aCount:ULong) : ULong;
	function readSegments(aWriter:NsWriteSegmentFun, aClosure:VoidPtr, aCount:ULong) : ULong;
}
