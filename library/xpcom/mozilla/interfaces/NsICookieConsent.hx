package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICookieConsent") extern class NsICookieConsent extends NsISupports
{
	function getConsent() : Void;
}
