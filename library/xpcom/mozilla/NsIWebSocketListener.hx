package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebSocketListener") extern class NsIWebSocketListener extends NsISupports
{
	function onAcknowledge(aContext:NsISupports, aSize:PRUint32) : Void;
	function onBinaryMessageAvailable(aContext:NsISupports, aMsg:ACString) : Void;
	function onMessageAvailable(aContext:NsISupports, aMsg:AUTF8String) : Void;
	function onServerClose(aContext:NsISupports, aCode:UShort, aReason:AUTF8String) : Void;
	function onStart(aContext:NsISupports) : Void;
	function onStop(aContext:NsISupports, aStatusCode:Nsresult) : Void;
}
