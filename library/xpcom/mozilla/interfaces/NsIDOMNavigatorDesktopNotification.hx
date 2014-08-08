package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMNavigatorDesktopNotification") extern class NsIDOMNavigatorDesktopNotification extends NsISupports
{
	/**
	 * Read only.
	 */
	var mozNotification : NsIDOMDesktopNotificationCenter;
}
