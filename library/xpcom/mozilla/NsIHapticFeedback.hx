package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIHapticFeedback") extern class NsIHapticFeedback extends NsISupports
{
	public static inline function getService() : NsIHapticFeedback return Components.classes[cast "@mozilla.org/widget/hapticfeedback;1"].getService(Components.interfaces.nsIHapticFeedback);
}
