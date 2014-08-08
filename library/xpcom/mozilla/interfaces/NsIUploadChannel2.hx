package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUploadChannel2") extern class NsIUploadChannel2 extends NsISupports
{
	function explicitSetUploadStream(aStream:NsIInputStream, aContentType:ACString, aContentLength:LongLong, aMethod:ACString, aStreamHasHeaders:Bool) : Void;
}
