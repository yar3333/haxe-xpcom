package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIRandomGenerator") extern class NsIRandomGenerator extends NsISupports
{
	function generateRandomBytes(aLength:ULong, aBuffer:Array<Octet>) : Void;
}
