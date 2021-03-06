package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIScrollable") extern class NsIScrollable
{
	/**
	 * Horizontal scrolling. When passing this in to a method you are requesting or setting data for the horizontal scrollbar.
	 */
	static inline var ScrollOrientation_X = 1;
	/**
	 * Vertical scrolling. When passing this in to a method you are requesting or setting data for the vertical scrollbar.
	 */
	static inline var ScrollOrientation_Y = 2;
	/**
	 * Scrollbars visible only when needed.
	 */
	static inline var Scrollbar_Auto = 1;
	/**
	 * Scrollbars never visible, even when scrolling is still possible.
	 */
	static inline var Scrollbar_Never = 2;
	/**
	 * Scrollbars always visible, even when scrolling is not possible.
	 */
	static inline var Scrollbar_Always = 3;
	
	function getCurScrollPos(scrollOrientation:Long) : Long;
	function getDefaultScrollbarPreferences(scrollOrientation:Long) : Long;
	function getScrollbarVisibility(verticalVisible:{value:Bool}, horizontalVisible:{value:Bool}) : Void;
	function getScrollRange(scrollOrientation:Long, minPos:{value:Long}, maxPos:{value:Long}) : Void;
	function setCurScrollPos(scrollOrientation:Long, curPos:Long) : Void;
	function setCurScrollPosEx(curHorizontalPos:Long, curVerticalPos:Long) : Void;
	function setDefaultScrollbarPreferences(scrollOrientation:Long, scrollbarPref:Long) : Void;
	function setScrollRange(scrollOrientation:Long, minPos:Long, maxPos:Long) : Void;
}
