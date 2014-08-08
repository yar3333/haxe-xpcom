package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISearchSubmission") extern class NsISearchSubmission extends NsISupports
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
