package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMGeoPositionErrorCallback") extern class NsIDOMGeoPositionErrorCallback
{
	function handleEvent(position:NsIDOMGeoPositionError) : Void;
}
