package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleHyperText") extern class NsIAccessibleHyperText extends NsISupports
{
	/**
	 * The number of links contained within this hypertext object. Read only. Renamed from links in Gecko 1.9
	 */
	var linkCount : Long;
}
