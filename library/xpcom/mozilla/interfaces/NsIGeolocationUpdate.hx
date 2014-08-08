package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIGeolocationUpdate") extern class NsIGeolocationUpdate extends NsISupports
{
	function update(position:NsIDOMGeoPosition) : Void;
}
