package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIThreadEventFilter") extern class NsIThreadEventFilter extends NsISupports
{
	function acceptEvent(event:NsIRunnable) : Bool;
}
