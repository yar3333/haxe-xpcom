package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsINavHistoryFullVisitResultNode") extern class NsINavHistoryFullVisitResultNode extends NsINavHistoryVisitResultNode
{
	/**
	 * The referring visit ID; the referrer should have the same session ID as the visit described by this record. Read only.
	 */
	var referringVisitId : LongLong;
	/**
	 * Indicates the type of transition for the visit. This will be one of the nsINavHistoryService.Transition type constants. Read only.
	 */
	var transitionType : Long;
	/**
	 * The visit ID of the visit. Read only.
	 */
	var visitId : LongLong;
}
