package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAccessibleStateChangeEvent") extern class NsIAccessibleStateChangeEvent extends NsISupports
{
	/**
	 * Returns the state of accessible (see constants declared in nsIAccessibleStates). Read only.
	 */
	var state : ULong;
}
