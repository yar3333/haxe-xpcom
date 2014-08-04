package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIUploadChannel") extern class NsIUploadChannel extends NsISupports
{
	/**
	 * Get the stream (to be) uploaded by this channel. Read only.
	 */
	var uploadStream : NsIInputStream;
}
