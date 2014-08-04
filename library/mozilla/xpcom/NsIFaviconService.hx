package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIFaviconService") extern class NsIFaviconService extends NsISupports
{
	/**
	 * The default favicon URI. Read only.
	 */
	var defaultFavicon : NsIURI;
}
