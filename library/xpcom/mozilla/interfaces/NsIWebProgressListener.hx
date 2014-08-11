package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebProgressListener") extern class NsIWebProgressListener extends NsISupports
{
	/**
	 * This flag indicates the start of a request. This flag is set when a request is initiated. The request is complete when <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">onStateChange()</a></code> is called for the same request with the STATE_STOP flag set.
	 */
	static inline var STATE_START = 0x00000001;
	/**
	 * This flag indicates that a request is being redirected. The request passed to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">onStateChange()</a></code> is the request that is being redirected. When a redirect occurs, a new request is generated automatically to process the new request. Expect a corresponding STATE_START event for the new request, and a STATE_STOP for the redirected request.
	 */
	static inline var STATE_REDIRECTING = 0x00000002;
	/**
	 * This flag indicates that data for a request is being transferred to an end consumer. This flag indicates that the request has been targeted, and that the user may start seeing content corresponding to the request.
	 */
	static inline var STATE_TRANSFERRING = 0x00000004;
	/**
	 * This flag is not used.
	 */
	static inline var STATE_NEGOTIATING = 0x00000008;
	/**
	 * This flag indicates the completion of a request. The aStatus parameter to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">onStateChange()</a></code> indicates the final status of the request.
	 */
	static inline var STATE_STOP = 0x00000010;
	
	function onLocationChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aLocation:NsIURI, ?aFlags:ULong) : Void;
	function onProgressChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aCurSelfProgress:Long, aMaxSelfProgress:Long, aCurTotalProgress:Long, aMaxTotalProgress:Long) : Void;
	function onSecurityChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aState:ULong) : Void;
	function onStateChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aStateFlags:ULong, aStatus:Nsresult) : Void;
	function onStatusChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aStatus:Nsresult, aMessage:Wstring) : Void;
}
