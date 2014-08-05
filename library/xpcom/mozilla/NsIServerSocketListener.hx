package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIServerSocketListener") extern class NsIServerSocketListener extends NsISupports
{
	function onSocketAccepted(aServ:NsIServerSocket, aTransport:NsISocketTransport) : Void;
	function onStopListening(aServ:NsIServerSocket, aStatus:Nsresult) : Void;
}
