package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFrameMessageManager") extern class NsIFrameMessageManager extends NsISupports
{
	function addMessageListener(aMessage:AString, aListener:NsIFrameMessageListener) : Void;
	function removeMessageListener(aMessage:AString, aListener:NsIFrameMessageListener) : Void;
	function sendAsyncMessage(aMessage:AString, json:AString) : Void;
}
