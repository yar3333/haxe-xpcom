package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUpdateTimerManager") extern class NsIUpdateTimerManager extends NsISupports
{
	function registerTimer(id:AString, callback:NsITimerCallback, interval:ULong) : Void;
}
