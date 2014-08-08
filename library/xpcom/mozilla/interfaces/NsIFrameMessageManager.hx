package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFrameMessageManager") extern class NsIFrameMessageManager extends NsISupports
{
	function addMessageListener(aMessage:AString, aListener:NsIFrameMessageListener) : Void;
	function removeMessageListener(aMessage:AString, aListener:NsIFrameMessageListener) : Void;
	function sendAsyncMessage(aMessage:AString, json:AString) : Void;
}
