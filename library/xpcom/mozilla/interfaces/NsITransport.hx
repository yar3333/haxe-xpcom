package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITransport") extern class NsITransport extends NsISupports
{
	/**
	 * Open flags.
	 */
	static inline var OPEN_BLOCKING = 1<<0;
	static inline var OPEN_UNBUFFERED = 1<<1;
	static inline var STATUS_READING = 0x804b0008;
	static inline var STATUS_WRITING = 0x804b0009;
	
	function close(aReason:Nsresult) : Void;
	function openInputStream(aFlags:ULong, aSegmentSize:ULong, aSegmentCount:ULong) : NsIInputStream;
	function openOutputStream(aFlags:ULong, aSegmentSize:ULong, aSegmentCount:ULong) : NsIOutputStream;
	function setEventSink(aSink:NsITransportEventSink, aEventTarget:NsIEventTarget) : Void;
}
