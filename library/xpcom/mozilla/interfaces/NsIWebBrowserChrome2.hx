package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebBrowserChrome2") extern class NsIWebBrowserChrome2 extends NsIWebBrowserChrome
{
	function setStatusWithContext(statusType:ULong, statusText:AString, statusContext:NsISupports) : Void;
}
