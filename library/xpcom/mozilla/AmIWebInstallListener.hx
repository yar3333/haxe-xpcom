package xpcom.mozilla;

import xpcom.types.*;

@:native("amIWebInstallListener") extern class AmIWebInstallListener extends NsISupports
{
	function onWebInstallBlocked(aWindow:NsIDOMWindow, aUri:NsIURI, aInstalls:Array<NsIVariant>, ?aCount:PRUint32) : Bool;
	function onWebInstallDisabled(aWindow:NsIDOMWindow, aUri:NsIURI, aInstalls:Array<NsIVariant>, ?aCount:PRUint32) : Void;
	function onWebInstallRequested(aWindow:NsIDOMWindow, aUri:NsIURI, aInstalls:Array<NsIVariant>, ?aCount:PRUint32) : Bool;
}
