package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccelerometerUpdate") extern class NsIAccelerometerUpdate extends NsIAccelerometer
{
	function accelerationChanged(x:Float, y:Float, z:Float) : Void;
}
