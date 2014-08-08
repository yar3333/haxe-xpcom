package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAuthPromptCallback") extern class NsIAuthPromptCallback extends NsISupports
{
	function onAuthAvailable(aContext:NsISupports, aAuthInfo:NsIAuthInformation) : Void;
	function onAuthCancelled(aContext:NsISupports, userCancel:Bool) : Void;
}
