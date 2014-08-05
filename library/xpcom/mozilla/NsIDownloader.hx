package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDownloader") extern class NsIDownloader extends NsIStreamListener
{
	function init(observer:NsIDownloadObserver, downloadLocation:NsIFile) : Void;
}
