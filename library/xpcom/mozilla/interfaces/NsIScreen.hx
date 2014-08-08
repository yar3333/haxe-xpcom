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
