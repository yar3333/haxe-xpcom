package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIVariant") extern class NsIVariant extends NsISupports
{
	/**
	 * Read only. Native code only!
	 */
	var dataType : PRUint16;
}
