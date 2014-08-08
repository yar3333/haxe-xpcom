package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPrefLocalizedString") extern class NsIPrefLocalizedString extends NsISupports
{
	/**
	 * Provides access to string data stored in this property.
	 */
	var data : Wstring;
	
	function setDataWithLength(length:ULong, data:Wstring) : Void;
	function toString() : Wstring;
}
