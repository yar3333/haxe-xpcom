package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMicrosummaryObserver") extern class NsIMicrosummaryObserver extends NsISupports
{
	function onContentLoaded(microsummary:NsIMicrosummary) : Void;
	function onElementAppended(microsummary:NsIMicrosummary) : Void;
	function onError(microsummary:NsIMicrosummary) : Void;
}
