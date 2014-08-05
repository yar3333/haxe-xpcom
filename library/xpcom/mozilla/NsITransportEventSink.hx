package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITransportEventSink") extern class NsITransportEventSink extends NsISupports
{
	function onTransportStatus(aTransport:NsITransport, aStatus:Nsresult, aProgress:ULongLong, aProgressMax:ULongLong) : Void;
}
