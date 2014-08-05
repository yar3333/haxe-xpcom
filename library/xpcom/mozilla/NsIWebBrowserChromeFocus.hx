package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebBrowserChromeFocus") extern class NsIWebBrowserChromeFocus extends NsISupports
{
	function focusNextElement() : Void;
	function focusPrevElement() : Void;
}
