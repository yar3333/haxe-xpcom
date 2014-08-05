package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMClientRect") extern class NsIDOMClientRect extends NsISupports
{
	/**
	 * Y-coordinate, relative to the viewport origin, of the bottom of the rectangle box. Read only.
	 */
	var bottom : Float;
	/**
	 * Height of the rectangle box (This is identical to bottom minus top). Read only.
	 */
	var height : Float;
	/**
	 * X-coordinate, relative to the viewport origin, of the left of the rectangle box. Read only.
	 */
	var left : Float;
	/**
	 * X-coordinate, relative to the viewport origin, of the right of the rectangle box. Read only.
	 */
	var right : Float;
	/**
	 * Y-coordinate, relative to the viewport origin, of the top of the rectangle box. Read only.
	 */
	var top : Float;
	/**
	 * Width of the rectangle box (This is identical to right minus left). Read only.
	 */
	var width : Float;
}
