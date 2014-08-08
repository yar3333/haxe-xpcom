package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIJSCID") extern class NsIJSCID extends NsIJSID
{
	function createInstance() : NsISupports;
	function getService() : NsISupports;
}
