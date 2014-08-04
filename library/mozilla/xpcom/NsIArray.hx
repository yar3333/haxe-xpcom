package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIArray") extern class NsIArray extends NsISupports
{
	/**
	 * The number of elements in the array. Read only.
	 */
	var length : ULong;
}
