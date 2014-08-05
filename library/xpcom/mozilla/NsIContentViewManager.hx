package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentViewManager") extern class NsIContentViewManager extends NsISupports
{
	/**
	 * The root content view. Read only.
	 */
	var rootContentView : NsIContentView;
	
	function getContentViewsIn(aXPx:Float, aYPx:Float, aTopSize:Float, aRightSize:Float, aBottomSize:Float, aLeftSize:Float, ?aLength:ULong, aResult:Array<NsIContentView>) : Void;
}
