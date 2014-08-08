package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIInProcessContentFrameMessageManager") extern class NsIInProcessContentFrameMessageManager extends NsIContentFrameMessageManager
{
	function getOwnerContent() : NsIContent;
}
