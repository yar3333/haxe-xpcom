package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIFaviconService") extern class NsIFaviconService extends NsISupports
{
	public static inline function getService() : NsIFaviconService return Components.classes[cast "@mozilla.org/browser/favicon-service;1"].getService(Components.interfaces.nsIFaviconService);
	
	/**
	 * The default favicon URI. Read only.
	 */
	var defaultFavicon : NsIURI;
}
