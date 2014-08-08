package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebBrowserChromeFocus") extern class NsIWebBrowserChromeFocus extends NsISupports
{
	function focusNextElement() : Void;
	function focusPrevElement() : Void;
}
