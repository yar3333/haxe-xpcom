package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMacDockSupport") extern class NsIMacDockSupport
{
	public static inline function createInstance() : NsIMacDockSupport
	{
		return xpcom.Components.classes[cast "@mozilla.org/cookie-monster;1"].createInstance(NsIMacDockSupport);
	}
	
	/**
	 * Text to display in a badge on the application's dock icon. This can be used, for example, to display the number of unread messages in an email client.
	 */
	var badgeText : AString;
	/**
	 * The menu to display when the user right-clicks on the application's icon in the dock.
	 */
	var dockMenu : NsIStandaloneMenu;
}
