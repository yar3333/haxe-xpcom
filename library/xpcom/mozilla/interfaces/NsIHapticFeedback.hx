package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIHapticFeedback") extern class NsIHapticFeedback extends NsISupports
{
	public static inline function getService() : NsIHapticFeedback return xpcom.Components.classes[cast "@mozilla.org/widget/hapticfeedback;1"].getService(xpcom.Components.interfaces.nsIHapticFeedback);
	
	function performSimpleAction(isLongPress:Long) : Void;
}
