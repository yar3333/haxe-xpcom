package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWindowCreator") extern class NsIWindowCreator extends NsISupports
{
	function createChromeWindow(parent:NsIWebBrowserChrome, chromeFlags:PRUint32) : NsIWebBrowserChrome;
}
