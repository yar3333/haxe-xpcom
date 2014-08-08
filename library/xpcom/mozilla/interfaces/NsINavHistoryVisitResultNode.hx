package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINavHistoryVisitResultNode") extern class NsINavHistoryVisitResultNode extends NsINavHistoryResultNode
{
	/**
	 * The session ID of the visit, used for session grouping when a tree view is sorted by date. Read only.
	 */
	var sessionId : LongLong;
}
