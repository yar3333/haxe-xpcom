package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIBadCertListener2") extern class NsIBadCertListener2 extends NsISupports
{
	function notifyCertProblem(socketInfo:NsIInterfaceRequestor, status:NsISSLStatus, targetSite:AUTF8String) : Bool;
}
