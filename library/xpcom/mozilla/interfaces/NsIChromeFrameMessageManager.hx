package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIChromeFrameMessageManager") extern class NsIChromeFrameMessageManager extends NsIFrameMessageManager
{
	function loadFrameScript(aURL:AString, aAllowDelayedLoad:Bool) : Void;
	function removeDelayedFrameScript(aURL:AString) : Void;
}
