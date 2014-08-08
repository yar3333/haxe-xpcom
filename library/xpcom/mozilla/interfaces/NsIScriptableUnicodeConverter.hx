package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIScriptableUnicodeConverter") extern class NsIScriptableUnicodeConverter
{
	public static inline function createInstance() : NsIScriptableUnicodeConverter return xpcom.Components.Constructor("@mozilla.org/intl/scriptableunicodeconverter", xpcom.Components.interfaces.nsIScriptableUnicodeConverter);
	
	/**
	 * Current character set. Throws NS_ERROR_UCONV_NOCONV if the requested charset is not supported.
	 */
	var charset : String;
	
	function ConvertFromUnicode(aSrc:AString) : ACString;
	function Finish() : ACString;
	function ConvertToUnicode(aSrc:ACString) : AString;
	function convertFromByteArray(aData:Array<Octet>, aCount:ULong) : AString;
	function convertToByteArray(aString:AString, ?aLen:ULong, aData:Array<Octet>) : Void;
	function convertToInputStream(aString:AString) : NsIInputStream;
}
