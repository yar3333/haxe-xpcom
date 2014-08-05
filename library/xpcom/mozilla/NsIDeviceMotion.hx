package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDeviceMotion") extern class NsIDeviceMotion extends NsISupports
{
	function addListener(aListener:NsIDeviceMotionListener) : Void;
	function addWindowListener(aWindow:NsIDOMWindow) : Void;
	function removeListener(aListener:NsIDeviceMotionListener) : Void;
	function removeWindowListener(aWindow:NsIDOMWindow) : Void;
}
