package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMOrientationEvent") extern class NsIDOMOrientationEvent
{
	/**
	 * The amount of tilt along the X axis.  Read only.
	 */
	var x : Float;
	/**
	 * The amount of tilt along the Y axis.  Read only.
	 */
	var y : Float;
	/**
	 * The amount of tilt along the Z axis.  Read only.
	 */
	var z : Float;
}
