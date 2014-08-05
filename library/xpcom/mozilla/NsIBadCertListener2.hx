package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIBadCertListener2") extern class NsIBadCertListener2 extends NsISupports
{
	function notifyCertProblem(socketInfo:NsIInterfaceRequestor, status:NsISSLStatus, targetSite:AUTF8String) : Bool;
}
