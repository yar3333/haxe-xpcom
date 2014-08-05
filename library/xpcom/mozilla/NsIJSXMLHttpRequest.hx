package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIJSXMLHttpRequest") extern class NsIJSXMLHttpRequest
{
	/**
	 * A mechanism for setting an upload progress event listener. This event listener may be called multiple times during the upload.
	 */
	var onuploadprogress : NsIDOMEventListener;
}
