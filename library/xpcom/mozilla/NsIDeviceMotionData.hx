package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDeviceMotionData") extern class NsIDeviceMotionData extends NsISupports
{
	/**
	 * The type of motion data reported by this object; see Motion type constants for possible values. Read only.
	 */
	var type  : ULong;
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
