package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUploadChannel") extern class NsIUploadChannel extends NsISupports
{
	/**
	 * Get the stream (to be) uploaded by this channel. Read only.
	 */
	var uploadStream : NsIInputStream;
	
	function setUploadStream(aStream:NsIInputStream, aContentType:ACString, aContentLength:Long) : Void;
}
