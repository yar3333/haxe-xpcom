package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUpdateCheckListener") extern class NsIUpdateCheckListener extends NsISupports
{
	function onCheckComplete(request:NsIXMLHttpRequest, updates:Array<NsIUpdate>, updateCount:ULong) : Void;
	function onError(request:NsIXMLHttpRequest, update:NsIUpdate) : Void;
	function onProgress(request:NsIXMLHttpRequest, position:ULong, totalSize:ULong) : Void;
}
