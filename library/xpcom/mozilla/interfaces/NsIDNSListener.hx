package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDNSListener") extern class NsIDNSListener extends NsISupports
{
	function onLookupComplete(aRequest:NsICancelable, aRecord:NsIDNSRecord, aStatus:Nsresult) : Void;
}
