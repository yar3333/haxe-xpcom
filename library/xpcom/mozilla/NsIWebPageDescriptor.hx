package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebPageDescriptor") extern class NsIWebPageDescriptor extends NsISupports
{
	/**
	 * Retrieves the page descriptor for the current document. Read only.
	 */
	var currentDescriptor : NsISupports;
	
	function loadPage(aPageDescriptor:NsISupports, aDisplayType:ULong) : Void;
}
