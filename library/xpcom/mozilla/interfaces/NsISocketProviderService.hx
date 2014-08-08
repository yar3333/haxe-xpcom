package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISocketProviderService") extern class NsISocketProviderService extends NsISupports
{
	function getSocketProvider(socketType:String) : NsISocketProvider;
}
