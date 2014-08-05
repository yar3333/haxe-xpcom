package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISearchSubmission") extern class NsISearchSubmission extends NsISupports
{
	/**
	 * The POST data associated with a search submission, wrapped in a MIME input stream. May be null. Read only.
	 */
	var postData : NsIInputStream;
	/**
	 * The URI to submit a search to. Read only.
	 */
	var uri : NsIURI;
}
