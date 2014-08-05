package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICharsetResolver") extern class NsICharsetResolver extends NsISupports
{
	function notifyResolvedCharset(charset:ACString, closure:NsISupports) : Void;
	function requestCharset(aWebNavigation:NsIWebNavigation, aChannel:NsIChannel, aWantCharset:Bool, aClosure:NsISupports) : ACString;
}
