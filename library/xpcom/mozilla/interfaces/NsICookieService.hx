package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICookieService") extern class NsICookieService extends NsISupports
{
	/**
	 * This attribute really doesn't belong on this interface. CVS blame will tell you why it is here. It remains until we can find a better home for it.
	 */
	var cookieIconIsVisible : Bool;
	
	function getCookieString(aURI:NsIURI, aChannel:NsIChannel) : String;
	function getCookieStringFromHttp(aURI:NsIURI, aFirstURI:NsIURI, aChannel:NsIChannel) : String;
	function setCookieString(aURI:NsIURI, aPrompt:NsIPrompt, aCookie:String, aChannel:NsIChannel) : Void;
	function setCookieStringFromHttp(aURI:NsIURI, aFirstURI:NsIURI, aPrompt:NsIPrompt, aCookie:String, aServerTime:String, aChannel:NsIChannel) : Void;
}
