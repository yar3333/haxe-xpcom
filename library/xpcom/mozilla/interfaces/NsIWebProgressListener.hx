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
	/**
	 * This flag indicates that the state transition is for a request, which includes but is not limited to document requests. (See below for a description of document requests.) Other types of requests, such as requests for inline content (for example images and stylesheets) are considered normal requests.
	 */
	static inline var STATE_IS_REQUEST = 0x00010000;
	/**
	 * <p>This flag indicates that the state transition is for a document request. This flag is set in addition to STATE_IS_REQUEST. A document request supports the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIChannel" title="">nsIChannel</a></code> interface and its loadFlags attribute includes the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIChannel" title="">nsIChannel</a></code>::LOAD_DOCUMENT_URI flag.</p>
	 * A document request does not complete until all requests associated with the loading of its corresponding document have completed. This includes other document requests (for example corresponding to HTML <iframe> elements). The document corresponding to a document request is available via the DOMWindow attribute of <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">onStateChange()</a></code>'s aWebProgress parameter.
	 */
	static inline var STATE_IS_DOCUMENT = 0x00020000;
	/**
	 * <p>This flag indicates that the state transition corresponds to the start or stop of activity in the indicated <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgress" title="">nsIWebProgress</a></code> instance. This flag is accompanied by either STATE_START or STATE_STOP, and it may be combined with other State Type Flags.</p>
	 * <p>Unlike STATE_IS_WINDOW, this flag is only set when activity within the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgress" title="">nsIWebProgress</a></code> instance being observed starts or stops. If activity only occurs in a child <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgress" title="">nsIWebProgress</a></code> instance, then this flag will be set to indicate the start and stop of that activity.</p>
	 * For example, in the case of navigation within a single frame of a HTML frameset, a nsIWebProgressListener instance attached to the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgress" title="">nsIWebProgress</a></code> of the frameset window will receive <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">onStateChange()</a></code> calls with the STATE_IS_NETWORK flag set to indicate the start and stop of said navigation. In other words, an observer of an outer window can determine when activity, that may be constrained to a child window or set of child windows, starts and stops.
	 */
	static inline var STATE_IS_NETWORK = 0x00040000;
	/**
	 * <p>This flag indicates that the state transition corresponds to the start or stop of activity in the indicated <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgress" title="">nsIWebProgress</a></code> instance. This flag is accompanied by either STATE_START or STATE_STOP, and it may be combined with other State Type Flags.</p>
	 * This flag is similar to STATE_IS_DOCUMENT. However, when a document request completes, two <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebProgressListener#onStateChange()">onStateChange()</a></code> calls with STATE_STOP are generated. The document request is passed as aRequest to both calls. The first has STATE_IS_REQUEST and STATE_IS_DOCUMENT set, and the second has the STATE_IS_WINDOW flag set (and possibly the STATE_IS_NETWORK flag set as well -- see above for a description of when the STATE_IS_NETWORK flag may be set). This second STATE_STOP event may be useful as a way to partition the work that occurs when a document request completes.
	 */
	static inline var STATE_IS_WINDOW = 0x00080000;
	/**
	 * This flag indicates that the state transition corresponds to the start or stop of activity for restoring a previously-rendered presentation. As such, there is no actual network activity associated with this request, and any modifications made to the document or presentation when it was originally loaded will still be present.
	 */
	static inline var STATE_RESTORING = 0x01000000;
	/**
	 * This flag indicates that the data corresponding to the request was received over an insecure channel.
	 */
	static inline var STATE_IS_INSECURE = 0x00000004;
	/**
	 * This flag indicates an unknown security state. This may mean that the request is being loaded as part of a page in which some content was received over an insecure channel.
	 */
	static inline var STATE_IS_BROKEN = 0x00000001;
	/**
	 * This flag indicates that the data corresponding to the request was received over a secure channel. The degree of security is expressed by STATE_SECURE_HIGH, STATE_SECURE_MED, or STATE_SECURE_LOW.
	 */
	static inline var STATE_IS_SECURE = 0x00000002;
	/**
	 * This flag indicates a high degree of security.
	 */
	static inline var STATE_SECURE_HIGH = 0x00040000;
	/**
	 * This flag indicates a medium degree of security.
	 */
	static inline var STATE_SECURE_MED = 0x00010000;
	/**
	 * This flag indicates a low degree of security.
	 */
	static inline var STATE_SECURE_LOW = 0x00020000;
	/**
	 * <p>State bits for EV == Extended Validation == High Assurance.</p>
	 * The topmost document uses an EV cert.
	 */
	static inline var STATE_IDENTITY_EV_TOPLEVEL = 0x00100000;
	/**
	 * This flag is on when aWebProgress did not load a new document. For example, the location change is due to an anchor scroll or a pushState/popState/replaceState.
	 */
	static inline var LOCATION_CHANGE_SAME_DOCUMENT = 0x00000001;
	/**
	 * This flag indicates that aWebProgress redirected from the requested document to an internal page to show error status, such as about:neterror, about:certerror and so on.
	 */
	static inline var LOCATION_CHANGE_ERROR_PAGE = 0x00000002;
	
	function onLocationChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aLocation:NsIURI, ?aFlags:ULong) : Void;
	function onProgressChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aCurSelfProgress:Long, aMaxSelfProgress:Long, aCurTotalProgress:Long, aMaxTotalProgress:Long) : Void;
	function onSecurityChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aState:ULong) : Void;
	function onStateChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aStateFlags:ULong, aStatus:Nsresult) : Void;
	function onStatusChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aStatus:Nsresult, aMessage:Wstring) : Void;
}
