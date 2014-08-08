package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIContentViewManager") extern class NsIContentViewManager extends NsISupports
{
	/**
	 * The root content view. Read only.
	 */
	var rootContentView : NsIContentView;
	
	function getContentViewsIn(aXPx:Float, aYPx:Float, aTopSize:Float, aRightSize:Float, aBottomSize:Float, aLeftSize:Float, ?aLength:{value:ULong}, aResult:Array<NsIContentView>) : Void;
}
