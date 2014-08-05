package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDownloadObserver") extern class NsIDownloadObserver extends NsISupports
{
	function onDownloadComplete(downloader:NsIDownloader, request:NsIRequest, ctxt:NsISupports, status:Nsresult, result:NsIFile) : Void;
}
