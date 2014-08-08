package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFrameMessageListener") extern class NsIFrameMessageListener extends NsISupports
{
	function receiveMessage() : Void;
}
