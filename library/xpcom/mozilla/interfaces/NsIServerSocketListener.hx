package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIServerSocketListener") extern class NsIServerSocketListener extends NsISupports
{
	function onSocketAccepted(aServ:NsIServerSocket, aTransport:NsISocketTransport) : Void;
	function onStopListening(aServ:NsIServerSocket, aStatus:Nsresult) : Void;
}
