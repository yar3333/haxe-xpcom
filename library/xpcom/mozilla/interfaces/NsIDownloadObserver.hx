package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDownloadObserver") extern class NsIDownloadObserver extends NsISupports
{
	function onDownloadComplete(downloader:NsIDownloader, request:NsIRequest, ctxt:NsISupports, status:Nsresult, result:NsIFile) : Void;
}
