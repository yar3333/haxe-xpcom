package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMicrosummaryObserver") extern class NsIMicrosummaryObserver extends NsISupports
{
	function onContentLoaded(microsummary:NsIMicrosummary) : Void;
	function onElementAppended(microsummary:NsIMicrosummary) : Void;
	function onError(microsummary:NsIMicrosummary) : Void;
}
