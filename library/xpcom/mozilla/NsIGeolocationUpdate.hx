package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIGeolocationUpdate") extern class NsIGeolocationUpdate extends NsISupports
{
	function update(position:NsIDOMGeoPosition) : Void;
}
