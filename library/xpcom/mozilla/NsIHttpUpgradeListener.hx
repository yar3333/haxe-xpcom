package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIHttpUpgradeListener") extern class NsIHttpUpgradeListener extends NsISupports
{
	function onTransportAvailable(aTransport:NsISocketTransport, aSocketIn:NsIAsyncInputStream, aSocketOut:NsIAsyncOutputStream) : Void;
}
