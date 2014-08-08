package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsILocaleService") extern class NsILocaleService extends NsISupports
{
	public static inline function getService() : NsILocaleService return xpcom.Components.classes[cast "@mozilla.org/intl/nslocaleservice;1"].getService(xpcom.Components.interfaces.nsILocaleService);
}
