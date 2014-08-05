package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebProgressListener2") extern class NsIWebProgressListener2 extends NsIWebProgressListener
{
	function onProgressChange64(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aCurSelfProgress:LongLong, aMaxSelfProgress:LongLong, aCurTotalProgress:LongLong, aMaxTotalProgress:LongLong) : Void;
	function onRefreshAttempted(aWebProgress:NsIWebProgress, aRefreshURI:NsIURI, aMillis:Long, aSameURI:Bool) : Bool;
}
