package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITraceableChannel") extern class NsITraceableChannel extends NsISupports
{
	function setNewListener(aListener:NsIStreamListener) : NsIStreamListener;
}
