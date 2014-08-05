package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISSLErrorListener") extern class NsISSLErrorListener extends NsISupports
{
	function notifySSLError(socketInfo:NsIInterfaceRequestor, error:PRInt32, targetSite:AUTF8String) : Bool;
}
