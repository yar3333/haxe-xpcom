package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIJSCID") extern class NsIJSCID extends NsIJSID
{
	function createInstance() : NsISupports;
	function getService() : NsISupports;
}
