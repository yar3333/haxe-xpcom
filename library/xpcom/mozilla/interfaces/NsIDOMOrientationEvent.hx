package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMOrientationEvent") extern class NsIDOMOrientationEvent extends NsIDOMEvent
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
