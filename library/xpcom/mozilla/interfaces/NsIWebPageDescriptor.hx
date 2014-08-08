package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebPageDescriptor") extern class NsIWebPageDescriptor extends NsISupports
{
	/**
	 * Retrieves the page descriptor for the current document. Read only.
	 */
	var currentDescriptor : NsISupports;
	
	function loadPage(aPageDescriptor:NsISupports, aDisplayType:ULong) : Void;
}
