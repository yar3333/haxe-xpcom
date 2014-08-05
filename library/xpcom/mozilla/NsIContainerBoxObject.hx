package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContainerBoxObject") extern class NsIContainerBoxObject extends NsISupports
{
	/**
	 * Read only. The nsIDocShell object that manages the contained document. The browser.xml, editor.xml and general.xml bindings use this property to gain access to other properties such as webNavigation, contentDocument and contentWindow.
	 */
	var docShell : NsIDocShell;
}
