package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIIFrameBoxObject") extern class NsIIFrameBoxObject
{
	/**
	 * Read only. Obsolete since Gecko 1.9 The nsIDocShell object that manages the contained document. The general.xml binding uses this property to gain access to the webNavigation, contentDocument and contentWindow properties.
	 */
	var docShell : NsIDocShell;
}
