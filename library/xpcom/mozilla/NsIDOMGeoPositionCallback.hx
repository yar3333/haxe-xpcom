package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMGeoPositionCallback") extern class NsIDOMGeoPositionCallback
{
	function handleEvent(position:NsIDOMGeoPosition) : Void;
}
