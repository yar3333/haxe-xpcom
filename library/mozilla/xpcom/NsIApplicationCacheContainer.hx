package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIApplicationCacheContainer") extern class NsIApplicationCacheContainer extends NsISupports
{
	/**
	 * The application cache with which the object is associated.
	 */
	var applicationCache : NsIApplicationCache;
}
