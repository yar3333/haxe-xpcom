package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITransport") extern class NsITransport extends NsISupports
{
	function close(aReason:Nsresult) : Void;
	function openInputStream(aFlags:ULong, aSegmentSize:ULong, aSegmentCount:ULong) : NsIInputStream;
	function openOutputStream(aFlags:ULong, aSegmentSize:ULong, aSegmentCount:ULong) : NsIOutputStream;
	function setEventSink(aSink:NsITransportEventSink, aEventTarget:NsIEventTarget) : Void;
}
