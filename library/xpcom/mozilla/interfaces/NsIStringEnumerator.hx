package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIStringEnumerator") extern class NsIStringEnumerator extends NsISupports
{
	function getNext() : AString;
	function hasMore() : Bool;
}
