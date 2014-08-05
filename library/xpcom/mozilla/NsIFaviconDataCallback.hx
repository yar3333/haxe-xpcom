package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFaviconDataCallback") extern class NsIFaviconDataCallback extends NsISupports
{
	function onComplete(aURI:NsIURI, aDataLen:ULong, aData:Array<Octet>, aMimeType:AUTF8String) : Void;
}
