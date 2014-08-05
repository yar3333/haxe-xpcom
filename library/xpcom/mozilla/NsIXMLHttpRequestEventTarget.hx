package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXMLHttpRequestEventTarget") extern class NsIXMLHttpRequestEventTarget extends NsIDOMEventTarget
{
	/**
	 * A JavaScript function object that gets invoked if the operation is canceled by the user.
	 */
	var onabort : NsIDOMEventListener;
	/**
	 * A JavaScript function object that gets invoked if the operation fails to complete due to an error.
	 */
	var onerror : NsIDOMEventListener;
	/**
	 * A JavaScript function object that gets invoked when the operation is successfully completed.
	 */
	var onload : NsIDOMEventListener;
	/**
	 * A JavaScript function object that gets invoked when the operation is completed for any reason; it will always follow a an abort, error, or load event.
	 */
	var onloadend : NsIDOMEventListener;
	/**
	 * A JavaScript function object that gets invoked exactly once when the operation begins.
	 */
	var onloadstart : NsIDOMEventListener;
	/**
	 * A JavaScript function object that gets invoked zero or more times, after the loadstart event, but before any abort, error, or load events occur.
	 */
	var onprogress : NsIDOMEventListener;
}
