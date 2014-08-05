package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentSniffer") extern class NsIContentSniffer extends NsISupports
{
	function getMIMETypeFromContent(aRequest:NsIRequest, aData:Array<Octet>, aLength:ULong) : ACString;
}
