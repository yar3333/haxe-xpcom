package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebBrowserChrome") extern class NsIWebBrowserChrome extends NsISupports
{
	/**
	 * The chrome flags for this browser chrome. The implementation should reflect the value of this attribute by hiding or showing its chrome appropriately.
	 */
	var chromeFlags : ULong;
	/**
	 * The currently loaded WebBrowser. The browser chrome may be told to set the WebBrowser object to a new object by setting this attribute. In this case the implementer is responsible for taking the new WebBrowser object and doing any necessary initialization or setup as if it had created the WebBrowser itself. This includes positioning setting up listeners etc.
	 */
	var webBrowser : NsIWebBrowser;
}
