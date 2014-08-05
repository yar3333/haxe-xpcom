package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDownloadManagerUI") extern class NsIDownloadManagerUI extends NsISupports
{
	/**
	 * When opening the Download Manager user interface, this value indicates that it's being done at the user's request.
	 */
	static inline var REASON_USER_INTERACTED = 0;
	/**
	 * When opening the Download Manager user interface, this value indicates that the user interface is being displayed because a new download is being started.
	 */
	static inline var REASON_NEW_DOWNLOAD = 1;
	
	/**
	 * true if the Download Manager UI is visible; otherwise false. Read only.
	 */
	var visible : Bool;
	
	function getAttention() : Void;
	function show(?aWindowContext:NsIInterfaceRequestor, ?aID:ULong, ?aReason:Short) : Void;
}
