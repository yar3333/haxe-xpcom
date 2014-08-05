package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMSimpleGestureEvent") extern class NsIDOMSimpleGestureEvent extends NsIDOMMouseEvent
{
	/**
	 * The delta value indicating how far the gesture moved. For update events, this indicates the movement since the previous update; for the MozRotateGesture and MozMagnifyGesture events, this indicates the total movement that occurred while the event was being processed. The value is specified in degrees for rotation events (where positive values indicate clockwise rotation and negative values indicate counter-clockwise rotation). For magnify gestures, the units are implementation-specific; however, positive values indicate zooming in, and negative values indicate zooming out. Read only. Note: On Mac OS X, the units used for magnification gestures by the underlying operating system API are not documented at this time; typical values appear to be in the range 0.0 to 100.0, but currently you can only rely on the value being either positive or negative. On Windows, the units indicate the difference between the previous and current width between the two touch points, in pixels.
	 */
	var delta : Float;
	/**
	 * The direction in which the gesture moved. See Direction constants and Rotation constants on this page. Read only.
	 */
	var direction : ULong;
	
	function initSimpleGestureEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:NsIDOMAbstractView, detailArg:Long, screenXArg:Long, screenYArg:Long, clientXArg:Long, clientYArg:Long, ctrlKeyArg:Bool, altKeyArg:Bool, shiftKeyArg:Bool, metaKeyArg:Bool, buttonArg:UShort, relatedTargetArg:NsIDOMEventTarget, directionArg:ULong, deltaArg:Float) : Void;
}
