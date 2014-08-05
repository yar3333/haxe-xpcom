package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISocketTransportService") extern class NsISocketTransportService extends NsISupports
{
	/**
	 * controls whether or not the socket transport service should poke the autodialer on connection failure. Obsolete since Gecko 1.8
	 */
	var autodialEnabled : Bool;
}
