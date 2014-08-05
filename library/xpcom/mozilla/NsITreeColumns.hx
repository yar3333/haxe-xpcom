package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITreeColumns") extern class NsITreeColumns extends NsISupports
{
	/**
	 * The number of columns. Read only.
	 */
	var count : Long;
	/**
	 * An alias for count (for the benefit of scripts which treat this as an array). Read only.
	 */
	var length : Long;
	/**
	 * The tree widget for these columns. Read only.
	 */
	var tree : NsITreeBoxObject;
}
