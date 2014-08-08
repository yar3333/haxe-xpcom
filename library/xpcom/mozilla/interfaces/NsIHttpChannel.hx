package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIHttpChannel") extern class NsIHttpChannel extends NsIChannel
{
	/**
	 * This attribute is a hint to the channel to indicate whether or not the underlying HTTP transaction should be allowed to be pipelined with other transactions. This should be set to false, for example, if the application knows that the corresponding document is likely to be very large.
	 * This attribute is true by default, though other factors may prevent pipelining.
	 * This attribute may only be set before the channel is opened.
	 * Exceptions thrown
	 * 
	 * NS_ERROR_FAILURE
	 * If set after the channel has been opened.
	 */
	var allowPipelining : Bool;
	/**
	 * This attribute specifies the number of redirects this channel is allowed to make. If zero, the channel will fail to redirect and will generate a NS_ERROR_REDIRECT_LOOP failure status.
	 * Note: An HTTP redirect results in a new channel being created. If the new channel supports nsIHttpChannel, then it will be assigned a value to its redirectionLimit attribute one less than the value of the redirected channel's redirectionLimit attribute. The initial value for this attribute may be a configurable preference (depending on the implementation).
	 */
	var redirectionLimit : ULong;
	/**
	 * Get or set the URI of the HTTP Referer: header. This is the address (URI) of the resource from which this channel's URI was obtained (see RFC2616 section 14.36).
	 * This attribute may only be set before the channel is opened.
	 * Note: The channel may silently refuse to set the Referer: header if the URI does not pass certain security checks (e.g., a "https://" URL will never be sent as the referrer for a plaintext HTTP request). The implementation is not required to throw an exception when the referrer URI is rejected.
	 * Exceptions thrown
	 * 
	 * NS_ERROR_IN_PROGRESS
	 * If set after the channel has been opened.
	 */
	var referrer : NsIURI;
	/**
	 * Set or get the HTTP request method (default is "GET"). Setter is case insensitive; getter returns an uppercase string.
	 * This attribute may only be set before the channel is opened.
	 * Note:  The data for a "POST" or "PUT" request can be configured via nsIUploadChannel. However, after setting the upload data, it may be necessary to set the request method explicitly. The documentation for nsIUploadChannel has further details. 
	 * Exceptions thrown
	 * 
	 * NS_ERROR_IN_PROGRESS
	 * If set after the channel has been opened.
	 */
	var requestMethod : ACString;
	/**
	 * Returns true if the HTTP response code indicates success. The value of nsIRequest.status() will be NS_OK even when processing a 404 File Not Found response because such a response may include a message body that (in some cases) should be shown to the user. Use this attribute to distinguish server error pages from normal pages, instead of comparing the response status manually against the set of valid response codes, if that is required by your application. Read only.
	 * Exceptions thrown
	 * 
	 * NS_ERROR_NOT_AVAILABLE
	 * If called before the response has been received (before onStartRequest()).
	 */
	var requestSucceeded : Bool;
	/**
	 * Get the HTTP response code (For example 200). Read only.
	 * Exceptions thrown
	 * 
	 * NS_ERROR_NOT_AVAILABLE
	 * If called before the response has been received (before onStartRequest()).
	 */
	var responseStatus : ULong;
	/**
	 * Get the HTTP response status text (For example "OK").
	 * Note: This returns the raw (possibly 8-bit) text from the server. There are no assumptions made about the charset of the returned text. You have been warned! Read only.
	 * Exceptions thrown
	 * 
	 * NS_ERROR_NOT_AVAILABLE
	 * If called before the response has been received (before onStartRequest()).
	 */
	var responseStatusText : ACString;
	
	function getRequestHeader(aHeader:ACString) : ACString;
	function getResponseHeader(header:ACString) : ACString;
	function isNoCacheResponse() : Bool;
	function isNoStoreResponse() : Bool;
	function redirectTo(aNewURI:NsIURI) : Void;
	function setRequestHeader(aHeader:ACString, aValue:ACString, aMerge:Bool) : Void;
	function setResponseHeader(header:ACString, value:ACString, merge:Bool) : Void;
	function visitRequestHeaders(aVisitor:NsIHttpHeaderVisitor) : Void;
	function visitResponseHeaders(aVisitor:NsIHttpHeaderVisitor) : Void;
}
