package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDiskCacheStreamInternal") extern class NsIDiskCacheStreamInternal extends NsISupports
{
	function closeInternal() : Void;
}
