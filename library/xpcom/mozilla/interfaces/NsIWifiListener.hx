package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWifiListener") extern class NsIWifiListener extends NsISupports
{
	function onChange(accessPoints:Array<NsIWifiAccessPoint>, aLen:ULong) : Void;
	function onError(error:Long) : Void;
}
