package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIWindowMediator") extern class NsIWindowMediator extends NsISupports
{
	public static inline function getService() : NsIWindowMediator return Components.classes[cast "@mozilla.org/appshell/window-mediator;1"].getService(Components.interfaces.nsIWindowMediator);
	
	/**
	 * Send window to top.
	 */
	static inline var zLevelTop = 1;
	/**
	 * Send window to bottom.
	 */
	static inline var zLevelBottom = 2;
	/**
	 * Place window below some window.
	 */
	static inline var zLevelBelow = 3;
}
