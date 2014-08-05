package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMimeHeaders") extern class NsIMimeHeaders extends NsISupports
{
	/**
	 * Read only.
	 */
	var allHeaders : String;
}
