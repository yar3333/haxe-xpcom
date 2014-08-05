package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIThreadPoolListener") extern class NsIThreadPoolListener extends NsISupports
{
	function onThreadCreated() : Void;
	function onThreadShuttingDown() : Void;
}
