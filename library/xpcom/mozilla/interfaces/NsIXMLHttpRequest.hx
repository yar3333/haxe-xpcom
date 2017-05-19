package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * Mozilla's XMLHttpRequest is modelled after Microsoft's IXMLHttpRequest
 * object. The goal has been to make Mozilla's version match Microsoft's
 * version as closely as possible, but there are bound to be some differences.
 *
 * In general, Microsoft's documentation for IXMLHttpRequest can be used.
 * Mozilla's interface definitions provide some additional documentation. The
 * web page to look at is http://www.mozilla.org/xmlextras/
 *
 * Mozilla's XMLHttpRequest object can be created in JavaScript like this:
 *   new XMLHttpRequest()
 * compare to Internet Explorer:
 *   new ActiveXObject("Msxml2.XMLHTTP")
 *
 * From JavaScript, the methods and properties visible in the XMLHttpRequest
 * object are a combination of nsIXMLHttpRequest and nsIJSXMLHttpRequest;
 * there is no need to differentiate between those interfaces.
 *
 * From native code, the way to set up onload and onerror handlers is a bit
 * different. Here is a comment from Johnny Stenback <jst@netscape.com>:
 *
 *   The mozilla implementation of nsIXMLHttpRequest implements the interface
 *   nsIDOMEventTarget and that's how you're supported to add event listeners.
 *   Try something like this:
 *
 *   nsCOMPtr<nsIDOMEventTarget> target(do_QueryInterface(myxmlhttpreq));
 *
 *   target->AddEventListener(NS_LITERAL_STRING("load"), mylistener, PR_FALSE)
 *
 *   where mylistener is your event listener object that implements the
 *   interface nsIDOMEventListener.
 *
 *   The 'onload', 'onerror', and 'onreadystatechange' attributes moved to
 *   nsIJSXMLHttpRequest, but if you're coding in C++ you should avoid using
 *   those.
 *
 * Conclusion: Do not use event listeners on XMLHttpRequest from C++, unless
 * you're aware of all the security implications.  And then think twice about it.
 */
@:native("Components.interfaces.nsIXMLHttpRequest") extern class NsIXMLHttpRequest extends js.html.EventTarget
{
	public static inline function createInstance() : NsIXMLHttpRequest
	{
		return xpcom.Components.classes[cast "@mozilla.org/xmlextras/xmlhttprequest;1"].createInstance(NsIXMLHttpRequest);
	}
	
	/**
	 * The request uses a channel in order to perform the
	 * request.  This attribute represents the channel used
	 * for the request.  NULL if the channel has not yet been
	 * created.
	 *
	 * Mozilla only. Requires elevated privileges to access.
	 */
	var channel : NsIChannel;
	
	/**
	 * The response to the request is parsed as if it were a
	 * text/xml stream. This attributes represents the response as
	 * a DOM Document object. NULL if the request is unsuccessful or
	 * has not yet been sent.
	 */
	var responseXML : NsIDOMDocument;
	
	/**
	 * The response to the request as text.
	 * NULL if the request is unsuccessful or
	 * has not yet been sent.
	 */
	var responseText : AString;
	
	/**
	 * Determine a response format which response attribute returns.
	 * empty string (initial value) or "text": as text.
	 * "arraybuffer": as a typed array ArrayBuffer.
	 * "blob": as a File API Blob.
	 * "document": as a DOM Document object.
	 */
	var responseType : AString; // attribute
	
	/**
	 * The response to the request as a specified format by responseType.
	 * NULL if the request is unsuccessful or
	 * has not yet been sent.
	 */
	var response : Dynamic; // implicit_jscontext
	
	/**
	 * The status of the response to the request for HTTP requests.
	 */
	var status : Int;
	
	/**
	 * The string representing the status of the response for HTTP requests.
	 */
	var statusText : ACString;
	
	/**
	 * If the request has been sent already, this method will abort the request.
	 */
	function abort() : Void; // binaryname(SlowAbort)
	
	/**
	 * Returns all of the response headers as a string for HTTP requests.
	 *
	 * @returns A string containing all of the response headers.
	 *          The empty string if the response has not yet been received.
	 */
	function getAllResponseHeaders() : ACString;
	
	/**
	 * Returns the text of the header with the specified name for
	 * HTTP requests.
	 *
	 * @param header The name of the header to retrieve
	 * @returns A string containing the text of the header specified.
	 *          NULL if the response has not yet been received or the
	 *          header does not exist in the response.
	 */
	function getResponseHeader(header:ACString) : ACString;
	
	/**
	 * Meant to be a script-only method for initializing a request.
	 *
	 * If there is an "active" request (that is, if open() has been called
	 * already), this is equivalent to calling abort() and then open().
	 *
	 * @param method The HTTP method - either "POST" or "GET". Ignored
	 *               if the URL is not a HTTP URL.
	 * @param url The URL to which to send the request.
	 * @param async (optional) Whether the request is synchronous or
	 *              asynchronous i.e. whether send returns only after
	 *              the response is received or if it returns immediately after
	 *              sending the request. In the latter case, notification
	 *              of completion is sent through the event listeners.
	 *              The default value is true.
	 * @param user (optional) A username for authentication if necessary.
	 *             The default value is the empty string
	 * @param password (optional) A password for authentication if necessary.
	 *                 The default value is the empty string
	 */
	function open(method:ACString, url:AUTF8String, ?async:Bool, ?user:DOMString, ?password:DOMString) : Void;
	
	/**
	 * Sends the request. If the request is asynchronous, returns
	 * immediately after sending the request. If it is synchronous
	 * returns only after the response has been received.
	 *
	 * All event listeners must be set before calling send().
	 *
	 * After the initial response, all event listeners will be cleared.
	 * // XXXbz what does that mean, exactly?   
	 *
	 * @param body Either an instance of nsIDOMDocument, nsIInputStream
	 *             or a string (nsISupportsString in the native calling
	 *             case). This is used to populate the body of the
	 *             HTTP request if the HTTP request method is "POST".
	 *             If the parameter is a nsIDOMDocument, it is serialized.
	 *             If the parameter is a nsIInputStream, then it must be
	 *             compatible with nsIUploadChannel.setUploadStream, and a
	 *             Content-Length header will be added to the HTTP request
	 *             with a value given by nsIInputStream.available.  Any
	 *             headers included at the top of the stream will be
	 *             treated as part of the message body.  The MIME type of
	 *             the stream should be specified by setting the Content-
	 *             Type header via the setRequestHeader method before
	 *             calling send.
	 */
	@:overload(function(body:NsIDOMFormData):Void {})
	@:overload(function(body:NsIVariant):Void {})
	function send() : Void;
	
	/**
	 * A variant of the send() method used to send binary data.
	 *
	 * @param body The request body as a DOM string.  The string data will be
	 *             converted to a single-byte string by truncation (i.e., the
	 *             high-order byte of each character will be discarded).
	 */
	function sendAsBinary(body:DOMString) : Void;
	
	/**
	 * Sets a HTTP request header for HTTP requests. You must call open
	 * before setting the request headers.
	 *
	 * @param header The name of the header to set in the request.
	 * @param value The body of the header.
	 */
	function setRequestHeader(header:ACString, value:ACString) : Void;
	
	/**
	 * The amount of milliseconds a request can take before being terminated.
	 * Initially zero. Zero means there is no timeout.
	 */
	var timeout : Int; // attribute
	
	/**
	 * The state of the request.
	 *
	 * Possible values:
	 *   0 UNSENT   open() has not been called yet.
	 *   1 OPENED   send() has not been called yet.
	 *   2 HEADERS_RECEIVED
	 *              send() has been called, headers and status are available.
	 *   3 LOADING  Downloading, responseText holds the partial data.
	 *   4 DONE     Finished with all operations.
	 */
	static var UNSENT : Int; // 0
	static var OPENED : Int; // 1
	static var HEADERS_RECEIVED : Int; // 2
	static var LOADING : Int; // 3
	static var DONE : Int; // 4
	var readyState : Int;
	
	/**
	 * Override the mime type returned by the server (if any). This may
	 * be used, for example, to force a stream to be treated and parsed
	 * as text/xml, even if the server does not report it as such. This
	 * must be done before the <code>send</code> method is invoked.
	 *
	 * @param mimetype The type used to override that returned by the server
	 *                 (if any).
	 */
	function overrideMimeType(mimetype:DOMString) : Void; // binaryname(SlowOverrideMimeType)
	
	/**
	 * Set to true if this is a background service request. This will
	 * prevent a load group being associated with the request, and
	 * suppress any security dialogs from being shown * to the user.
	 * In the cases where one of those dialogs would be shown, the request
	 * will simply fail instead.
	 */
	var mozBackgroundRequest : Bool; // attribute
	
	/**
	 * When set to true attempts to make cross-site Access-Control requests
	 * with credentials such as cookies and authorization headers.
	 *
	 * Never affects same-site requests.
	 *
	 * Defaults to false.
	 */
	var withCredentials : Bool; // attribute
	
	/**
	 * Upload process can be tracked by adding event listener to |upload|.
	 */
	var upload : NsIXMLHttpRequestUpload;

	/**
	 * Meant to be a script-only mechanism for setting a callback function.
	 * The attribute is expected to be JavaScript function object. When the
	 * readyState changes, the callback function will be called.
	 * This attribute should not be used from native code!!
	 *
	 * After the initial response, all event listeners will be cleared.
	 * // XXXbz what does that mean, exactly?   
	 *
	 * Call open() before setting an onreadystatechange listener.
	 */
	var onreadystatechange : Dynamic; // attribute, implicit_jscontext
	
	/**
	 * If true, the request will be sent without cookie and authentication headers.
	 */
	var mozAnon : Bool;
	
	/**
	 * If true, the same origin policy will not be enforced on the request.
	 */
	var mozSystem : Bool;
}
