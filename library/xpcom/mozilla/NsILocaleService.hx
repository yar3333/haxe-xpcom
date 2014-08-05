package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsILocaleService") extern class NsILocaleService extends NsISupports
{
	public static inline function getService() : NsILocaleService return Components.classes[cast "@mozilla.org/intl/nslocaleservice;1"].getService(Components.interfaces.nsILocaleService);
}
