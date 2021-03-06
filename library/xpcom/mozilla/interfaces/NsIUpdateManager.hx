package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUpdateManager") extern class NsIUpdateManager extends NsISupports
{
	/**
	 * An nsIUpdate object describing the currently in use update. This update is not in the history list. Read only.
	 */
	var activeUpdate : NsIUpdate;
	/**
	 * The number of updates in the history list; the updates can be fetched by calling getUpdateAt(). Read only.
	 */
	var updateCount : Long;
	
	function getUpdateAt(index:Long) : NsIUpdate;
	function saveUpdates() : Void;
}
