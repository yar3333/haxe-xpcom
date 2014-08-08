package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITimerCallback") extern class NsITimerCallback extends NsISupports
{
	function notify(timer:NsITimer) : Void;
}
