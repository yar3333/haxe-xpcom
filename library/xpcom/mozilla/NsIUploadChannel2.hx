package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUploadChannel2") extern class NsIUploadChannel2 extends NsISupports
{
	function explicitSetUploadStream(aStream:NsIInputStream, aContentType:ACString, aContentLength:LongLong, aMethod:ACString, aStreamHasHeaders:Bool) : Void;
}
