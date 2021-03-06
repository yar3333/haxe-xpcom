package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICookiePermission") extern class NsICookiePermission extends NsISupports
{
	/**
	 * nsCookieAccess's access default value
	 */
	static inline var ACCESS_DEFAULT = 0;
	/**
	 * nsCookieAccess's access allow value
	 */
	static inline var ACCESS_ALLOW = 1;
	/**
	 * nsCookieAccess's access deny value
	 */
	static inline var ACCESS_DENY = 2;
	/**
	 * Additional values for nsCookieAccess, which are not directly used by any methods on this interface, but are nevertheless convenient to define here. These may be relocated somewhere else if we ever consider freezing this interface.
	 */
	static inline var ACCESS_SESSION = 8;
	
	function canAccess(aURI:NsIURI, aChannel:NsIChannel) : NsCookieAccess;
	function canSetCookie(aURI:NsIURI, aChannel:NsIChannel, aCookie:NsICookie2, aIsSession:{value:Bool}, aExpiry:{value:PRInt64}) : Bool;
	function getOriginatingURI(aChannel:NsIChannel) : NsIURI;
	function setAccess(aURI:NsIURI, aAccess:NsCookieAccess) : Void;
}
