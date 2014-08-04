package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIPrefLocalizedString") extern class NsIPrefLocalizedString extends NsISupports
{
	/**
	 * Provides access to string data stored in this property.
	 */
	var data : Wstring;
}
