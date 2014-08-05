package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUTF8StringEnumerator") extern class NsIUTF8StringEnumerator extends NsISupports
{
	function getNext() : AUTF8String;
	function hasMore() : Bool;
}
