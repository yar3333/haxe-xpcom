package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIExternalURLHandlerService") extern class NsIExternalURLHandlerService extends NsISupports
{
	function getURLHandlerInfoFromOS(aURL:NsIURI, aFound:Bool) : NsIHandlerInfo;
}
