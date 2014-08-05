package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMemory") extern class NsIMemory extends NsISupports
{
	function alloc(size:Size_t) : VoidPtr;
	function free(ptr:VoidPtr) : Void;
	function heapMinimize(immediate:Bool) : Void;
	function isLowMemory() : Bool;
	function realloc(ptr:VoidPtr, newSize:Size_t) : VoidPtr;
}
