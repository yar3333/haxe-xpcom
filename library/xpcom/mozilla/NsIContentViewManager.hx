package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentViewManager") extern class NsIContentViewManager extends NsISupports
{
	/**
	 * The root content view. Read only.
	 */
	var rootContentView : NsIContentView;
}
