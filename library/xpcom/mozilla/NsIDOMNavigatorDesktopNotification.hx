package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMNavigatorDesktopNotification") extern class NsIDOMNavigatorDesktopNotification extends NsISupports
{
	/**
	 * Read only.
	 */
	var mozNotification : NsIDOMDesktopNotificationCenter;
}
