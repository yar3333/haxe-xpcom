package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIVersionComparator") extern class NsIVersionComparator extends NsISupports
{
	public static inline function getService() : NsIVersionComparator return Components.classes[cast "@mozilla.org/xpcom/version-comparator;1"].getService(Components.interfaces.nsIVersionComparator);
	
	function compare(A:ACString, B:ACString) : Long;
}
