package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMGeoPositionErrorCallback") extern class NsIDOMGeoPositionErrorCallback
{
	function handleEvent(position:NsIDOMGeoPositionError) : Void;
}
