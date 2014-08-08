package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMGeoPositionCallback") extern class NsIDOMGeoPositionCallback
{
	function handleEvent(position:NsIDOMGeoPosition) : Void;
}
