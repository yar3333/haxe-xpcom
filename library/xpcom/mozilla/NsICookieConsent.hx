package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICookieConsent") extern class NsICookieConsent extends NsISupports
{
	function getConsent() : Void;
}
