package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIInProcessContentFrameMessageManager") extern class NsIInProcessContentFrameMessageManager extends NsIContentFrameMessageManager
{
	function getOwnerContent() : NsIContent;
}
