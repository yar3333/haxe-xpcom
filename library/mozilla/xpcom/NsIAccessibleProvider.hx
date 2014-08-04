package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAccessibleProvider") extern class NsIAccessibleProvider extends NsISupports
{
	/**
	 * Read only. Obsolete since Gecko 1.9
	 */
	var accessible : NsIAccessible;
	/**
	 * Value representing the type of accessible object. See constants for details. Read only.
	 */
	var accessibleType : Long;
}
