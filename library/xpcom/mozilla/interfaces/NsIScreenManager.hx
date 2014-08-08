package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIScreenManager") extern class NsIScreenManager extends NsISupports
{
	public static inline function getService() : NsIScreenManager return Components.classes[cast "@mozilla.org/gfx/screenmanager;1"].getService(Components.interfaces.nsIScreenManager);
	
	/**
	 * The number of screens on the user's computer. Read only.
	 */
	var numberOfScreens : ULong;
	/**
	 * The primary display screen; this is the screen with the menu bar (on the Mac) or taskbar or equivalent on Windows or Linux. Read only.
	 */
	var primaryScreen : NsIScreen;
	
	function screenForNativeWidget(nativeWidget:VoidPtr) : NsIScreen;
	function screenForRect(left:Long, top:Long, width:Long, height:Long) : NsIScreen;
}
