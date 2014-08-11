package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebPageDescriptor") extern class NsIWebPageDescriptor extends NsISupports
{
	/**
	 * Generates an optionally syntax-highlighted (for XML/HTML documents) source of the original page.
	 */
	static inline var DISPLAY_AS_SOURCE = 0x0001;
	/**
	 * Just refetches the existing page. Note that if the descriptor is that of the source of another page, this keeps the source view, but uses the current syntax highlighting preference.
	 */
	static inline var DISPLAY_NORMAL = 0x0002;
	
	/**
	 * Retrieves the page descriptor for the current document. Read only.
	 */
	var currentDescriptor : NsISupports;
	
	function loadPage(aPageDescriptor:NsISupports, aDisplayType:ULong) : Void;
}
