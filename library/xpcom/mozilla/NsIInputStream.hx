package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIInputStream") extern class NsIInputStream extends NsISupports
{
	@:overload(function() : ULong {})
	function available() : ULongLong;
	function close() : Void;
	function isNonBlocking() : Bool;
	function read(aBuf:CharPtr, aCount:ULong) : ULong;
	function readSegments(aWriter:NsWriteSegmentFun, aClosure:VoidPtr, aCount:ULong) : ULong;
}
