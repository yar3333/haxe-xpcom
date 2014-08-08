package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUpdateTimerManager") extern class NsIUpdateTimerManager extends NsISupports
{
	function registerTimer(id:AString, callback:NsITimerCallback, interval:ULong) : Void;
}
