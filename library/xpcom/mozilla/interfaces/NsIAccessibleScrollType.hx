package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleScrollType") extern class NsIAccessibleScrollType extends NsISupports
{
	/**
	 * Scroll the top left of the object or substring to the top left of the window (or as close as possible).
	 */
	static inline var SCROLL_TYPE_TOP_LEFT = 0x00;
	/**
	 * Scroll the bottom right of the object or substring to the bottom right of the window (or as close as possible).
	 */
	static inline var SCROLL_TYPE_BOTTOM_RIGHT = 0x01;
	/**
	 * Scroll the top edge of the object or substring to the top edge of the window (or as close as possible).
	 */
	static inline var SCROLL_TYPE_TOP_EDGE = 0x02;
	/**
	 * Scroll the bottom edge of the object or substring to the bottom edge of the window (or as close as possible).
	 */
	static inline var SCROLL_TYPE_BOTTOM_EDGE = 0x03;
	/**
	 * Scroll the left edge of the object or substring to the left edge of the window (or as close as possible).
	 */
	static inline var SCROLL_TYPE_LEFT_EDGE = 0x04;
	/**
	 * Scroll the right edge of the object or substring to the right edge of the window (or as close as possible).
	 */
	static inline var SCROLL_TYPE_RIGHT_EDGE = 0x05;
	/**
	 * Scroll an object the minimum amount necessary in order for the entire frame to be visible (if possible).
	 */
	static inline var SCROLL_TYPE_ANYWHERE = 0x06;
}
