package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDNSService") extern class NsIDNSService extends NsISupports
{
	/**
	 * Read only.
	 */
	var myHostName : AUTF8String;
}
