package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIOutputStream") extern class NsIOutputStream extends NsISupports
{
	function close() : Void;
	function flush() : Void;
	function isNonBlocking() : Bool;
	function write(aBuf:String, aCount:ULong) : ULong;
	function writeFrom(aFromStream:NsIInputStream, aCount:ULong) : ULong;
	function writeSegments(aReader:NsReadSegmentFun, aClosure:VoidPtr, aCount:ULong) : ULong;
}
