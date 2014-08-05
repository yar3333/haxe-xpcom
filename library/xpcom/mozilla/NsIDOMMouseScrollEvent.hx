package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMMouseScrollEvent") extern class NsIDOMMouseScrollEvent extends NsIDOMMouseEvent
{
	/**
	 * The horizontal (X) axis.
	 */
	static inline var HORIZONTAL_AXIS = 1;
	/**
	 * The vertical (Y) axis.
	 */
	static inline var VERTICAL_AXIS = 2;
	
	/**
	 * Indicates which mouse wheel axis changed; this will be either HORIZONTAL_AXIS or VERTICAL_AXIS. Read only.
	 */
	var axis : Long;
}
