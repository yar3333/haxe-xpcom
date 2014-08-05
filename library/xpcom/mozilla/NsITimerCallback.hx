package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITimerCallback") extern class NsITimerCallback extends NsISupports
{
	function notify(timer:NsITimer) : Void;
}
