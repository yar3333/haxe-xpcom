package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIJumpListItem") extern class NsIJumpListItem extends NsISupports
{
	/**
	 * Retrieves the jump list item type. Read only.
	 */
	var type : Short;
}
