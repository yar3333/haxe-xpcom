package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebProgress") extern class NsIWebProgress extends NsISupports
{
	/**
	 * Only receive the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">nsIWebProgressListener.onStateChange()</a></code> event if the aStateFlags parameter includes <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener" title="">nsIWebProgressListener</a></code>::STATE_IS_REQUEST.
	 */
	static inline var NOTIFY_STATE_REQUEST = 0x00000001;
	/**
	 * Only receive the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">nsIWebProgressListener.onStateChange()</a></code> event if the aStateFlags parameter includes <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener" title="">nsIWebProgressListener</a></code>::STATE_IS_DOCUMENT.
	 */
	static inline var NOTIFY_STATE_DOCUMENT = 0x00000002;
	/**
	 * Only receive the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">nsIWebProgressListener.onStateChange()</a></code> event if the aStateFlags parameter includes <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener" title="">nsIWebProgressListener</a></code>::STATE_IS_NETWORK.
	 */
	static inline var NOTIFY_STATE_NETWORK = 0x00000004;
	/**
	 * Only receive the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">nsIWebProgressListener.onStateChange()</a></code> event if the aStateFlags parameter includes <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener" title="">nsIWebProgressListener</a></code>::STATE_IS_WINDOW.
	 */
	static inline var NOTIFY_STATE_WINDOW = 0x00000008;
	/**
	 * Receive all <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">nsIWebProgressListener.onStateChange()</a></code> events.
	 */
	static inline var NOTIFY_STATE_ALL = 0x0000000f;
	
	/**
	 * The DOM window associated with this nsIWebProgress instance. Read only. Exceptions thrown  NS_ERROR_FAILURE Indicates that there is no associated DOM window.
	 */
	var DOMWindow : NsIDOMWindow;
	/**
	 * Indicates whether or not a document is currently being loaded in the context of this nsIWebProgress instance. Read only.
	 */
	var isLoadingDocument : PRBool;
	
	function addProgressListener(aListener:NsIWebProgressListener, aNotifyMask:ULong) : Void;
	function removeProgressListener(aListener:NsIWebProgressListener) : Void;
}
