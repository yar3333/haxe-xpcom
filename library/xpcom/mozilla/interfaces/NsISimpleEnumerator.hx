package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISimpleEnumerator") extern class NsISimpleEnumerator extends NsISupports
{
	function getNext() : NsISupports;
	function hasMoreElements() : Bool;
}
