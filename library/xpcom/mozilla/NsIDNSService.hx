package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIDNSService") extern class NsIDNSService extends NsISupports
{
	public static inline function getService() : NsIDNSService return Components.classes[cast "@mozilla.org/network/dns-service;1"].getService(Components.interfaces.nsIDNSService);
	
	/**
	 * Read only.
	 */
	var myHostName : AUTF8String;
	
	function asyncResolve(aHostName:AUTF8String, aFlags:ULong, aListener:NsIDNSListener, aListenerTarget:NsIEventTarget) : NsICancelable;
	function init() : Void;
	function resolve(aHostName:AUTF8String, aFlags:ULong) : NsIDNSRecord;
	function shutdown() : Void;
}
