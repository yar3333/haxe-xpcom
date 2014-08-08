package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITransportEventSink") extern class NsITransportEventSink extends NsISupports
{
	function onTransportStatus(aTransport:NsITransport, aStatus:Nsresult, aProgress:ULongLong, aProgressMax:ULongLong) : Void;
}
