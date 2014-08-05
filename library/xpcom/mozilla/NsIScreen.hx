package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIScreen") extern class NsIScreen extends NsISupports
{
	public static inline function getService() : NsIScreen return Components.classes[cast "@mozilla.org/gfx/screenmanager;1"].getService(Components.interfaces.nsIScreen);
	
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
}
