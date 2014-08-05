package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWifiListener") extern class NsIWifiListener extends NsISupports
{
	function onChange(accessPoints:Array<NsIWifiAccessPoint>, aLen:ULong) : Void;
	function onError(error:Long) : Void;
}
