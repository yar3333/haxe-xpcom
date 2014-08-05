package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIExternalURLHandlerService") extern class NsIExternalURLHandlerService extends NsISupports
{
	function getURLHandlerInfoFromOS(aURL:NsIURI, aFound:Bool) : NsIHandlerInfo;
}
