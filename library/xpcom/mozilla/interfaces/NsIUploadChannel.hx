package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUploadChannel") extern class NsIUploadChannel extends NsISupports
{
	/**
	 * Get the stream (to be) uploaded by this channel. Read only.
	 */
	var uploadStream : NsIInputStream;
	
	function setUploadStream(aStream:NsIInputStream, aContentType:ACString, aContentLength:Long) : Void;
}
