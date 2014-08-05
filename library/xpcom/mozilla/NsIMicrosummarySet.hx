package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMicrosummarySet") extern class NsIMicrosummarySet extends NsISupports
{
	function addObserver(observer:NsIMicrosummaryObserver) : Void;
	function Enumerate() : NsISimpleEnumerator;
	function removeObserver(observer:NsIMicrosummaryObserver) : Void;
}
