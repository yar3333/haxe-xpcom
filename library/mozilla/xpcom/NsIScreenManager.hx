package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIScreenManager") extern class NsIScreenManager extends NsISupports
{
	/**
	 * The number of screens on the user's computer. Read only.
	 */
	var numberOfScreens : ULong;
	/**
	 * The primary display screen; this is the screen with the menu bar (on the Mac) or taskbar or equivalent on Windows or Linux. Read only.
	 */
	var primaryScreen : NsIScreen;
}
