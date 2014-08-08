package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICookieStorage") extern class NsICookieStorage extends NsISupports
{
	function getCookie(aCookieURL:String, aCookieBuffer:VoidPtr, aCookieSize:PRUint32Ref) : Void;
	function setCookie(aCookieURL:String, aCookieBuffer:ConstVoidPtr, aCookieSize:ULong) : Void;
}
