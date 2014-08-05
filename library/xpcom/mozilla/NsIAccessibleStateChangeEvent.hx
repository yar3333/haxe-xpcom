package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleStateChangeEvent") extern class NsIAccessibleStateChangeEvent extends NsISupports
{
	/**
	 * Returns the state of accessible (see constants declared in nsIAccessibleStates). Read only.
	 */
	var state : ULong;
	
	function isEnabled() : Bool;
	function isExtraState() : Bool;
}
