package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIBrowserBoxObject") extern class NsIBrowserBoxObject
{
	/**
	 * Read only. Obsolete since Gecko 1.9 The nsIDocShell object that manages the contained document. The browser.xml binding uses this property to gain access to the webNavigation, contentDocument, contentWindow, webBrowserFind, webProgress and sessionHistory properties.
	 */
	var docShell : NsIDocShell;
}
