package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleRelation") extern class NsIAccessibleRelation extends NsISupports
{
	/**
	 * Returns the type of the relation. Read only.
	 */
	var relationType : ULong;
	/**
	 * Returns the number of targets for this relation. Read only.
	 */
	var targetsCount : ULong;
}
