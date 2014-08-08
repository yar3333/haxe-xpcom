package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFeedProgressListener") extern class NsIFeedProgressListener extends NsIFeedResultListener
{
	function handleEntry(entry:NsIFeedEntry, result:NsIFeedResult) : Void;
	function handleFeedAtFirstEntry(result:NsIFeedResult) : Void;
	function handleStartFeed(result:NsIFeedResult) : Void;
	function reportError(errorText:AString, lineNumber:Long, bozo:Bool) : Void;
}
