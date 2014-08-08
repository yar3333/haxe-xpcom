package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleStateChangeEvent") extern class NsIAccessibleStateChangeEvent extends NsISupports
{
	/**
	 * Returns the state of accessible (see constants declared in nsIAccessibleStates). Read only.
	 */
	var state : ULong;
	
	function isEnabled() : Bool;
	function isExtraState() : Bool;
}
