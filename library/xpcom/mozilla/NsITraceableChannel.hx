package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITraceableChannel") extern class NsITraceableChannel extends NsISupports
{
	function setNewListener(aListener:NsIStreamListener) : NsIStreamListener;
}
