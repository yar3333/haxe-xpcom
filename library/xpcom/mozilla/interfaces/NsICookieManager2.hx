package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICookieManager2") extern class NsICookieManager2 extends NsICookieManager
{
	function add(aHost:AUTF8String, aPath:AUTF8String, aName:ACString, aValue:ACString, aIsSecure:Bool, aIsHttpOnly:Bool, aIsSession:Bool, aExpiry:PRInt64) : Void;
	function cookieExists(aCookie:NsICookie2) : Bool;
	function countCookiesFromHost(aHost:AUTF8String) : ULong;
	function findMatchingCookie(aCookie:NsICookie2, aCountFromHost:{value:ULong}) : Bool;
	function getCookiesFromHost(aHost:AUTF8String) : NsISimpleEnumerator;
	function importCookies(aCookieFile:NsIFile) : Void;
}
