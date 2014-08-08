package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUrlListManagerCallback") extern class NsIUrlListManagerCallback extends NsISupports
{
	function handleEvent(value:ACString) : Void;
}
