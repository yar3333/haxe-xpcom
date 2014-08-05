package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFeedProgressListener") extern class NsIFeedProgressListener extends NsIFeedResultListener
{
	function handleEntry(entry:NsIFeedEntry, result:NsIFeedResult) : Void;
	function handleFeedAtFirstEntry(result:NsIFeedResult) : Void;
	function handleStartFeed(result:NsIFeedResult) : Void;
	function reportError(errorText:AString, lineNumber:Long, bozo:Bool) : Void;
}
