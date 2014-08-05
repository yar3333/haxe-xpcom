package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsISocketTransportService") extern class NsISocketTransportService extends NsISupports
{
	public static inline function createInstance() : NsISocketTransportService return Components.Constructor("@mozilla.org/network/socket-transport-service;1", Components.interfaces.nsISocketTransportService);
	
	/**
	 * controls whether or not the socket transport service should poke the autodialer on connection failure. Obsolete since Gecko 1.8
	 */
	var autodialEnabled : Bool;
}
