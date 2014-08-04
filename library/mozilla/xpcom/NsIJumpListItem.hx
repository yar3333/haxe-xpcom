package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIJumpListItem") extern class NsIJumpListItem extends NsISupports
{
	/**
	 * Retrieves the jump list item type. Read only.
	 */
	var type : Short;
}
