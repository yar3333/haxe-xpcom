package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIVersionComparator") extern class NsIVersionComparator extends NsISupports
{
	public static inline function getService() : NsIVersionComparator return Components.classes[cast "@mozilla.org/xpcom/version-comparator;1"].getService(Components.interfaces.nsIVersionComparator);
	
	function compare(A:ACString, B:ACString) : Long;
}
