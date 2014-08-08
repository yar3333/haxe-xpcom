package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUTF8StringEnumerator") extern class NsIUTF8StringEnumerator extends NsISupports
{
	function getNext() : AUTF8String;
	function hasMore() : Bool;
}
