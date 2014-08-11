package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIScreen") extern class NsIScreen extends NsISupports
{
	public static inline function getService() : NsIScreen
	{
		return xpcom.Components.classes[cast "@mozilla.org/gfx/screenmanager;1"].getService(NsIScreen);
	}
	
	/**
	 * The screen is fully dimmed (that is, off).
	 */
	static inline var BRIGHTNESS_DIM = 0;
	/**
	 * The screen is at full brightness.
	 */
	static inline var BRIGHTNESS_FULL = 1;
	/**
	 * The number of different brightness levels.
	 */
	static inline var BRIGHTNESS_LEVELS = 2;
	/**
	 * 0° of rotation (that is, no rotation, or default orientation).
	 */
	static inline var ROTATION_0_DEG = 0;
	/**
	 * 90° of rotation.
	 */
	static inline var ROTATION_90_DEG = 1;
	/**
	 * 180° of rotation.
	 */
	static inline var ROTATION_180_DEG = 2;
	/**
	 * 270° of rotation.
	 */
	static inline var ROTATION_270_DEG = 3;
	
	/**
	 * The screen's color depth; this is the number of bits used to represent a color. Read only.
	 */
	var colorDepth : Long;
	/**
	 * The screen's pixel depth; this is the number of bits used to represent a pixel. Read only.
	 */
	var pixelDepth : Long;
	/**
	 * The screen's current rotation; you may set this to any of the values listed in Screen rotation constants. This will only have an effect on platforms that support screen rotation.
	 */
	var rotation : ULong;
	
	function GetAvailRect(left:{value:Long}, top:{value:Long}, width:{value:Long}, height:{value:Long}) : Void;
	function GetRect(left:{value:Long}, top:{value:Long}, width:{value:Long}, height:{value:Long}) : Void;
	function lockMinimumBrightness(brightness:ULong) : Void;
	function unlockMinimumBrightness(brightness:ULong) : Void;
}
