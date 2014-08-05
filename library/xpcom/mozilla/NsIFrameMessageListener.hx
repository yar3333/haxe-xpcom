package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFrameMessageListener") extern class NsIFrameMessageListener extends NsISupports
{
	function receiveMessage() : Void;
}
