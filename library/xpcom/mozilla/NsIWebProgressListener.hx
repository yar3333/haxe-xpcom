package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebProgressListener") extern class NsIWebProgressListener extends NsISupports
{
	function onLocationChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aLocation:NsIURI, ?aFlags:ULong) : Void;
	function onProgressChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aCurSelfProgress:Long, aMaxSelfProgress:Long, aCurTotalProgress:Long, aMaxTotalProgress:Long) : Void;
	function onSecurityChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aState:ULong) : Void;
	function onStateChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aStateFlags:ULong, aStatus:Nsresult) : Void;
	function onStatusChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aStatus:Nsresult, aMessage:Wstring) : Void;
}
