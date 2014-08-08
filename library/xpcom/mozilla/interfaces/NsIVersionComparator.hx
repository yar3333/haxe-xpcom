package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIVersionComparator") extern class NsIVersionComparator extends NsISupports
{
	public static inline function getService() : NsIVersionComparator
	{
		return xpcom.Components.classes[cast "@mozilla.org/xpcom/version-comparator;1"].getService(NsIVersionComparator);
	}
	
	function compare(A:ACString, B:ACString) : Long;
}
