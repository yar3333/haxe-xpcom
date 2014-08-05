package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUTF8ConverterService") extern class NsIUTF8ConverterService extends NsISupports
{
	function convertStringToUTF8(aString:ACString, aCharset:String, aSkipCheck:Bool) : AUTF8String;
	function convertURISpecToUTF8(aSpec:ACString, aCharset:String) : AUTF8String;
}
