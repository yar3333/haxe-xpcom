package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDownloader") extern class NsIDownloader extends NsIStreamListener
{
	function init(observer:NsIDownloadObserver, downloadLocation:NsIFile) : Void;
}
