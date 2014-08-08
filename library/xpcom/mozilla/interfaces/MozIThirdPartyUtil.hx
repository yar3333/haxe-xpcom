package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIThirdPartyUtil") extern class MozIThirdPartyUtil extends NsISupports
{
	function isThirdPartyChannel(aChannel:NsIChannel, ?aURI:NsIURI) : Bool;
	function isThirdPartyURI(aFirstURI:NsIURI, aSecondURI:NsIURI) : Bool;
	function isThirdPartyWindow(aWindow:NsIDOMWindow, ?aURI:NsIURI) : Bool;
}
