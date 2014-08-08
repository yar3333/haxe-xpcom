package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIServerSocket") extern class NsIServerSocket extends NsISupports
{
	public static inline function createInstance(aPort:Long, aLoopbackOnly:Bool, aBackLog:Long) : NsIServerSocket
	{
		var r : NsIServerSocket = xpcom.Components.classes[cast "@mozilla.org/network/server-socket;1"].createInstance(NsIServerSocket);
		r.init(aPort, aLoopbackOnly, aBackLog);
		return r;
	}
	
	/**
	 * Returns the port of this server socket. Read only.
	 */
	var port : Long;
	
	function init(aPort:Long, aLoopbackOnly:Bool, aBackLog:Long) : Void;
	function initWithAddress(aAddr:PRNetAddrPtr, aBackLog:Long) : Void;
	function close() : Void;
	function asyncListen(aListener:NsIServerSocketListener) : Void;
	function getAddress() : PRNetAddr;
}
