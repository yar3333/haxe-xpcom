package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIJumpListItem") extern class NsIJumpListItem extends NsISupports
{
	/**
	 * Empty list item.
	 */
	static inline var JUMPLIST_ITEM_EMPTY = 0;
	/**
	 * Separator.
	 */
	static inline var JUMPLIST_ITEM_SEPARATOR = 1;
	/**
	 * Web link item.
	 */
	static inline var JUMPLIST_ITEM_LINK = 2;
	/**
	 * Application shortcut.
	 */
	static inline var JUMPLIST_ITEM_SHORTCUT = 3;
	
	/**
	 * Retrieves the jump list item type. Read only.
	 */
	var type : Short;
	
	function equals(item:NsIJumpListItem) : Bool;
}
