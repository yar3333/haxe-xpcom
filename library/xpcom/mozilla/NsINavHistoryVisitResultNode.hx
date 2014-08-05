package xpcom.mozilla;

import xpcom.types.*;

@:native("nsINavHistoryVisitResultNode") extern class NsINavHistoryVisitResultNode extends NsINavHistoryResultNode
{
	/**
	 * The session ID of the visit, used for session grouping when a tree view is sorted by date. Read only.
	 */
	var sessionId : LongLong;
}
