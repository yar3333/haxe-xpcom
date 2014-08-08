package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFeedResultListener") extern class NsIFeedResultListener extends NsISupports
{
	function handleResult(result:NsIFeedResult) : Void;
}
