package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIJumpListBuilder") extern class NsIJumpListBuilder extends NsISupports
{
	/**
	 * Indicates whether jump list taskbar features are supported by the current host. Read only.
	 */
	var available : Short;
	/**
	 * JumpList management. Indicates if a commit has already occurred in this session. Read only. Exceptions thrown  NS_ERROR_NOT_AVAILABLE On all calls if taskbar functionality is not supported by the operating system.
	 */
	var isListCommitted : Bool;
	/**
	 * The maximum number of jump list items the current desktop can support. Read only.
	 */
	var maxListItems : Short;
}
