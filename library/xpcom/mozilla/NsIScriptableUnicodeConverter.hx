package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIScriptableUnicodeConverter") extern class NsIScriptableUnicodeConverter
{
	/**
	 * Current character set. Throws NS_ERROR_UCONV_NOCONV if the requested charset is not supported.
	 */
	var charset : String;
}
