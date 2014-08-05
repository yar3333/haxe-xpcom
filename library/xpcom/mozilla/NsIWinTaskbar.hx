package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWinTaskbar") extern class NsIWinTaskbar extends NsISupports
{
	/**
	 * Returns true if the operating system supports Windows 7 or later taskbar features; you can use this instead of in-place operating system version checking. Read only.
	 */
	var available : Bool;
	/**
	 * The default application user model ID the application registers with the system. This ID is used by the taskbar for grouping windows and when associating pinned shortcuts with running instances and jump lists. Read only.
	 */
	var defaultGroupId : AString;
}
