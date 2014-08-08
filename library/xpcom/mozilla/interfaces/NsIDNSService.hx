package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDNSService") extern class NsIDNSService extends NsISupports
{
	public static inline function getService() : NsIDNSService return xpcom.Components.classes[cast "@mozilla.org/network/dns-service;1"].getService(xpcom.Components.interfaces.nsIDNSService);
	
	/**
	 * Read only.
	 */
	var myHostName : AUTF8String;
	
	function asyncResolve(aHostName:AUTF8String, aFlags:ULong, aListener:NsIDNSListener, aListenerTarget:NsIEventTarget) : NsICancelable;
	function init() : Void;
	function resolve(aHostName:AUTF8String, aFlags:ULong) : NsIDNSRecord;
	function shutdown() : Void;
}
