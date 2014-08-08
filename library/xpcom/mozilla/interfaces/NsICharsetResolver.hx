package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICharsetResolver") extern class NsICharsetResolver extends NsISupports
{
	function notifyResolvedCharset(charset:ACString, closure:NsISupports) : Void;
	function requestCharset(aWebNavigation:NsIWebNavigation, aChannel:NsIChannel, aWantCharset:{value:Bool}, aClosure:{value:NsISupports}) : ACString;
}
