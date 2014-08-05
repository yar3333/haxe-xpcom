package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIStringEnumerator") extern class NsIStringEnumerator extends NsISupports
{
	function getNext() : AString;
	function hasMore() : Bool;
}
