package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFeedResultListener") extern class NsIFeedResultListener extends NsISupports
{
	function handleResult(result:NsIFeedResult) : Void;
}
