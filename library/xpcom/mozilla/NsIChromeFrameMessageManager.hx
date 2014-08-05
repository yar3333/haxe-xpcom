package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIChromeFrameMessageManager") extern class NsIChromeFrameMessageManager extends NsIFrameMessageManager
{
	function loadFrameScript(aURL:AString, aAllowDelayedLoad:Bool) : Void;
	function removeDelayedFrameScript(aURL:AString) : Void;
}
