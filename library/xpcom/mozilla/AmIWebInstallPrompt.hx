package xpcom.mozilla;

import xpcom.types.*;

@:native("amIWebInstallPrompt") extern class AmIWebInstallPrompt extends NsISupports
{
	function confirm(aWindow:NsIDOMWindow, aUri:NsIURI, aInstalls:Array<NsIVariant>, ?aCount:PRUint32) : Void;
}
