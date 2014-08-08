package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMicrosummarySet") extern class NsIMicrosummarySet extends NsISupports
{
	function addObserver(observer:NsIMicrosummaryObserver) : Void;
	function Enumerate() : NsISimpleEnumerator;
	function removeObserver(observer:NsIMicrosummaryObserver) : Void;
}
