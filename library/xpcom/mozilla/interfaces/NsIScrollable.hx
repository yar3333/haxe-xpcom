package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIScrollable") extern class NsIScrollable
{
	function getCurScrollPos(scrollOrientation:Long) : Long;
	function getDefaultScrollbarPreferences(scrollOrientation:Long) : Long;
	function getScrollbarVisibility(verticalVisible:Bool, horizontalVisible:Bool) : Void;
	function getScrollRange(scrollOrientation:Long, minPos:Long, maxPos:Long) : Void;
	function setCurScrollPos(scrollOrientation:Long, curPos:Long) : Void;
	function setCurScrollPosEx(curHorizontalPos:Long, curVerticalPos:Long) : Void;
	function setDefaultScrollbarPreferences(scrollOrientation:Long, scrollbarPref:Long) : Void;
	function setScrollRange(scrollOrientation:Long, minPos:Long, maxPos:Long) : Void;
}