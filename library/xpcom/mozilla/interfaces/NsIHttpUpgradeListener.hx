package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIHttpUpgradeListener") extern class NsIHttpUpgradeListener extends NsISupports
{
	function onTransportAvailable(aTransport:NsISocketTransport, aSocketIn:NsIAsyncInputStream, aSocketOut:NsIAsyncOutputStream) : Void;
}
