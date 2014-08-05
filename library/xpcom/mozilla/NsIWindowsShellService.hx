package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWindowsShellService") extern class NsIWindowsShellService extends NsIShellService
{
	/**
	 * The desktop background color, visible when no background image is used, or if the background image is centered and does not fill the entire screen. A rgb value, where (r Obsolete since Gecko 1.8
	 */
	var desktopBackgroundColor : ULong;
	/**
	 * The number of unread mail messages for the current user. Read only.
	 */
	var unreadMailCount : ULong;
}
