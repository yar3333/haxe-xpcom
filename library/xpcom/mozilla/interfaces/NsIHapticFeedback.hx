package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIHapticFeedback") extern class NsIHapticFeedback extends NsISupports
{
	public static inline function getService() : NsIHapticFeedback
	{
		return xpcom.Components.classes[cast "@mozilla.org/widget/hapticfeedback;1"].getService(NsIHapticFeedback);
	}
	
	/**
	 * Specify as the action type to perform a short vibration.
	 */
	static inline var ShortPress = 0;
	/**
	 * Specify as the action type to perform a long vibration.
	 */
	static inline var LongPress = 1;
	
	function performSimpleAction(isLongPress:Long) : Void;
}
