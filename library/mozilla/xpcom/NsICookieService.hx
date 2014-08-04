package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsICookieService") extern class NsICookieService extends NsISupports
{
	/**
	 * This attribute really doesn't belong on this interface. CVS blame will tell you why it is here. It remains until we can find a better home for it.
	 */
	var cookieIconIsVisible : Bool;
}
