package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleCoordinateType") extern class NsIAccessibleCoordinateType extends NsISupports
{
	/**
	 * The coordinates are relative to the screen.
	 */
	static inline var COORDTYPE_SCREEN_RELATIVE = 0x00;
	/**
	 * The coordinates are relative to the window.
	 */
	static inline var COORDTYPE_WINDOW_RELATIVE = 0x01;
	/**
	 * The coordinates are relative to the upper left corner of the bounding box of the immediate parent.
	 */
	static inline var COORDTYPE_PARENT_RELATIVE = 0x02;
}
