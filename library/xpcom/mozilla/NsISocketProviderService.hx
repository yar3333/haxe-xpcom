package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISocketProviderService") extern class NsISocketProviderService extends NsISupports
{
	function getSocketProvider(socketType:String) : NsISocketProvider;
}
