package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDeviceMotionListener") extern class NsIDeviceMotionListener extends NsISupports
{
	function onMotionChange(aMotionData:NsIDeviceMotionData) : Void;
}
