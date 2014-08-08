package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUpdateCheckListener") extern class NsIUpdateCheckListener extends NsISupports
{
	function onCheckComplete(request:NsIXMLHttpRequest, updates:Array<NsIUpdate>, updateCount:ULong) : Void;
	function onError(request:NsIXMLHttpRequest, update:NsIUpdate) : Void;
	function onProgress(request:NsIXMLHttpRequest, position:ULong, totalSize:ULong) : Void;
}
