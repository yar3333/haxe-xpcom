package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIPrefLocalizedString") extern class NsIPrefLocalizedString extends NsISupports
{
	/**
	 * Provides access to string data stored in this property.
	 */
	var data : Wstring;
	
	function setDataWithLength(length:ULong, data:Wstring) : Void;
	function toString() : Wstring;
}
