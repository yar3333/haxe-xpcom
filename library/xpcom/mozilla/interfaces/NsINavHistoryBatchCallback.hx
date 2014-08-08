package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINavHistoryBatchCallback") extern class NsINavHistoryBatchCallback extends NsISupports
{
	function runBatched(aUserData:NsISupports) : Void;
}
