package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIServerSocket") extern class NsIServerSocket extends NsISupports
{
	public static inline function createInstance() : NsIServerSocket return Components.Constructor("@mozilla.org/network/server-socket;1", Components.interfaces.nsIServerSocket);
	
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
