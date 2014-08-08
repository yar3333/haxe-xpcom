package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIApplicationCacheContainer") extern class NsIApplicationCacheContainer extends NsISupports
{
	/**
	 * The application cache with which the object is associated.
	 */
	var applicationCache : NsIApplicationCache;
}
