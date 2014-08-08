package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFaviconDataCallback") extern class NsIFaviconDataCallback extends NsISupports
{
	function onComplete(aURI:NsIURI, aDataLen:ULong, aData:Array<Octet>, aMimeType:AUTF8String) : Void;
}
