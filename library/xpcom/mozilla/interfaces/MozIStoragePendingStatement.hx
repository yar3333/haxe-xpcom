package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIStoragePendingStatement") extern class MozIStoragePendingStatement extends NsISupports
{
	function cancel() : Void;
}
