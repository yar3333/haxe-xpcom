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
}
