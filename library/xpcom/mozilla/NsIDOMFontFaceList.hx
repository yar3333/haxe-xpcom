package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMFontFaceList") extern class NsIDOMFontFaceList extends NsISupports
{
	/**
	 * The number of items in the list. Read only.
	 */
	var length : ULong;
}
