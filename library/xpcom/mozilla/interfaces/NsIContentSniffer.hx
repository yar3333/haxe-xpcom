package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIContentSniffer") extern class NsIContentSniffer extends NsISupports
{
	function getMIMETypeFromContent(aRequest:NsIRequest, aData:Array<Octet>, aLength:ULong) : ACString;
}
