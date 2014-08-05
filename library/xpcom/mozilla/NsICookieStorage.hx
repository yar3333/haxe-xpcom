package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICookieStorage") extern class NsICookieStorage extends NsISupports
{
	function getCookie(aCookieURL:String, aCookieBuffer:VoidPtr, aCookieSize:PRUint32Ref) : Void;
	function setCookie(aCookieURL:String, aCookieBuffer:ConstVoidPtr, aCookieSize:ULong) : Void;
}
