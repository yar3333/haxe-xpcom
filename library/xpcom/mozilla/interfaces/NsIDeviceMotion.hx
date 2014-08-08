package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDeviceMotion") extern class NsIDeviceMotion extends NsISupports
{
	function addListener(aListener:NsIDeviceMotionListener) : Void;
	function addWindowListener(aWindow:NsIDOMWindow) : Void;
	function removeListener(aListener:NsIDeviceMotionListener) : Void;
	function removeWindowListener(aWindow:NsIDOMWindow) : Void;
}
