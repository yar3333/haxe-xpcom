package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICancelable") extern class NsICancelable extends NsISupports
{
	function cancel(aReason:Nsresult) : Void;
}
