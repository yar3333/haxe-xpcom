package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.amIWebInstallPrompt") extern class AmIWebInstallPrompt extends NsISupports
{
	function confirm(aWindow:NsIDOMWindow, aUri:NsIURI, aInstalls:Array<NsIVariant>, ?aCount:PRUint32) : Void;
}
