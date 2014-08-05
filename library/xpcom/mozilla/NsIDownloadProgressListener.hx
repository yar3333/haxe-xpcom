package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDownloadProgressListener") extern class NsIDownloadProgressListener extends NsISupports
{
	/**
	 * document The document of the download manager frontend.
	 */
	var document : NsIDOMDocument;
	
	function onDownloadStateChange(aState:Short, aDownload:NsIDownload) : Void;
	function onLocationChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aLocation:NsIURI, aDownload:NsIDownload) : Void;
	function onProgressChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aCurSelfProgress:LongLong, aMaxSelfProgress:LongLong, aCurTotalProgress:LongLong, aMaxTotalProgress:LongLong, aDownload:NsIDownload) : Void;
	function onSecurityChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aState:ULong, aDownload:NsIDownload) : Void;
	function onStateChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aStateFlags:ULong, aStatus:Nsresult, aDownload:NsIDownload) : Void;
	function onStatusChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aStatus:Nsresult, aMessage:Wstring, aDownload:NsIDownload) : Void;
}
