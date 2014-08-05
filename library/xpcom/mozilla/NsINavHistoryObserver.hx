package xpcom.mozilla;

import xpcom.types.*;

@:native("nsINavHistoryObserver") extern class NsINavHistoryObserver extends NsISupports
{
	/**
	 * The page's favicon changed.
	 */
	static inline var ATTRIBUTE_FAVICON = 3;
}
