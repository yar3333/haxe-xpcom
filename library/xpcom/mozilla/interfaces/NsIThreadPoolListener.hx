package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIThreadPoolListener") extern class NsIThreadPoolListener extends NsISupports
{
	function onThreadCreated() : Void;
	function onThreadShuttingDown() : Void;
}
