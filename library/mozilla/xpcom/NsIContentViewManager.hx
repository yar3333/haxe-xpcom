package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIContentViewManager") extern class NsIContentViewManager extends NsISupports
{
	/**
	 * The root content view. Read only.
	 */
	var rootContentView : NsIContentView;
}
