package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUnicharInputStream") extern class NsIUnicharInputStream
{
	function close() : Void;
	function readString(aCount:ULong, aString:{value:AString}) : ULong;
}
