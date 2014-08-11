package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDeviceMotionData") extern class NsIDeviceMotionData extends NsISupports
{
	/**
	 * The motion data describes device acceleration.
	 */
	static inline var TYPE_ACCELERATION = 0;
	/**
	 * The motion data describes a device orientation chang.
	 */
	static inline var TYPE_ORIENTATION  = 1;
	
	/**
	 * The type of motion data reported by this object; see Motion type constants for possible values. Read only.
	 */
	var type : ULong;
	/**
	 * The amount of tilt along the X axis. Read only.
	 */
	var x : Float;
	/**
	 * The amount of tilt along the Y axis. Read only.
	 */
	var y : Float;
	/**
	 * The amount of tilt along the Z axis. Read only.
	 */
	var z : Float;
}
