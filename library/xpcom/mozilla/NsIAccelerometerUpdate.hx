package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccelerometerUpdate") extern class NsIAccelerometerUpdate extends NsIAccelerometer
{
	function accelerationChanged(x:Float, y:Float, z:Float) : Void;
}
