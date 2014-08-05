package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIScriptableUnicodeConverter") extern class NsIScriptableUnicodeConverter
{
	public static inline function createInstance() : NsIScriptableUnicodeConverter return Components.Constructor("@mozilla.org/intl/scriptableunicodeconverter", Components.interfaces.nsIScriptableUnicodeConverter);
	
	/**
	 * Current character set. Throws NS_ERROR_UCONV_NOCONV if the requested charset is not supported.
	 */
	var charset : String;
}
