package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMemoryMultiReporterCallback") extern class NsIMemoryMultiReporterCallback extends NsISupports
{
	function callback(process:ACString, path:AUTF8String, kind:PRInt32, units:PRInt32, amount:PRInt64, description:AUTF8String, closure:NsISupports) : Void;
}
