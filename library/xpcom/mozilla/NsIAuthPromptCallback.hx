package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAuthPromptCallback") extern class NsIAuthPromptCallback extends NsISupports
{
	function onAuthAvailable(aContext:NsISupports, aAuthInfo:NsIAuthInformation) : Void;
	function onAuthCancelled(aContext:NsISupports, userCancel:Bool) : Void;
}
