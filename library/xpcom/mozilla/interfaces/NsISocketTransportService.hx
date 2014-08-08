package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISocketTransportService") extern class NsISocketTransportService extends NsISupports
{
	public static inline function createInstance() : NsISocketTransportService return xpcom.Components.Constructor("@mozilla.org/network/socket-transport-service;1", xpcom.Components.interfaces.nsISocketTransportService, "init");
	
	/**
	 * controls whether or not the socket transport service should poke the autodialer on connection failure. Obsolete since Gecko 1.8
	 */
	var autodialEnabled : Bool;
	
	function attachSocket(aFd:PRFileDescPtr, aHandler:NsASocketHandlerPtr) : Void;
	function createTransport(aSocketTypes:Array<String>, aTypeCount:ULong, aHost:AUTF8String, aPort:Long, aProxyInfo:NsIProxyInfo) : NsISocketTransport;
	function init() : Void;
	function notifyWhenCanAttachSocket(aEvent:NsIRunnable) : Void;
	function shutdown() : Void;
}
