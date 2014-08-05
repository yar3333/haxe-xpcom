package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMStorage") extern class NsIDOMStorage extends NsISupports
{
	/**
	 * The number of keys stored in the session store. Read only.
	 */
	var length : ULong;
}