package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISOCKSSocketInfo") extern class NsISOCKSSocketInfo extends NsISupports
{
	/**
	 * The destination server address. Native code only!
	 */
	var destinationAddr : PRNetAddrPtr;
	/**
	 * The external (remote) proxy address. Native code only!
	 */
	var externalProxyAddr : PRNetAddrPtr;
	/**
	 * The internal (local) proxy address. Native code only!
	 */
	var internalProxyAddr : PRNetAddrPtr;
}
