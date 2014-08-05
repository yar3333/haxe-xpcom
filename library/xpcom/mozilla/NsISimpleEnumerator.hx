package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISimpleEnumerator") extern class NsISimpleEnumerator extends NsISupports
{
	function getNext() : NsISupports;
	function hasMoreElements() : Bool;
}
