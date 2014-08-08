package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWindowCreator") extern class NsIWindowCreator extends NsISupports
{
	function createChromeWindow(parent:NsIWebBrowserChrome, chromeFlags:PRUint32) : NsIWebBrowserChrome;
}
