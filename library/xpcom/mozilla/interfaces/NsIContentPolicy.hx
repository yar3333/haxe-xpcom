package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIContentPolicy") extern class NsIContentPolicy extends NsISupports
{
	static inline var TYPE_OTHER = 1;
	/**
	 * Indicates an executable script (such as JavaScript). 
	 */
	static inline var TYPE_SCRIPT = 2;
	/**
	 * Indicates an image (for example, IMG elements). 
	 */
	static inline var TYPE_IMAGE = 3;
	/**
	 * Indicates a stylesheet (for example, STYLE elements). 
	 */
	static inline var TYPE_STYLESHEET = 4;
	/**
	 * Indicates a generic object (plugin-handled content typically falls under this category). 
	 */
	static inline var TYPE_OBJECT = 5;
	/**
	 * Indicates a document at the top-level (that is in a browser). 
	 */
	static inline var TYPE_DOCUMENT = 6;
	/**
	 * Indicates a document contained within another document (for example, IFRAMEs, FRAMES, and OBJECTs). 
	 */
	static inline var TYPE_SUBDOCUMENT = 7;
	/**
	 * 
	 *     <p>Indicates a timed refresh.</p>
	 *     <p><code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldLoad()">shouldLoad()</a></code> will never get this, because it does not represent content to be loaded (the actual load triggered by the refresh will go through <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldLoad()">shouldLoad()</a></code> as expected).</p>
	 *     <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldProcess()">shouldProcess()</a></code> will get this for, for example META Refresh elements and HTTP Refresh headers. 
	 */
	static inline var TYPE_REFRESH = 8;
	/**
	 * Indicates an XBL binding request, triggered either by -moz-binding CSS property or Document.addBinding method. 
	 */
	static inline var TYPE_XBL = 9;
	/**
	 * Indicates a ping triggered by a click on <A PING="..."> element. 
	 */
	static inline var TYPE_PING = 10;
	/**
	 * Indicates an XMLHttpRequest. Also used for document.load. 
	 */
	static inline var TYPE_XMLHTTPREQUEST = 11;
	/**
	 * Indicates a request by a plugin. 
	 */
	static inline var TYPE_OBJECT_SUBREQUEST = 12;
	/**
	 * Indicates a DTD loaded by an XML document. 
	 */
	static inline var TYPE_DTD = 13;
	/**
	 * Indicates a font loaded via @font-face rule. 
	 */
	static inline var TYPE_FONT = 14;
	/**
	 * Indicates a video or audio load. 
	 */
	static inline var TYPE_MEDIA = 15;
	/**
	 * Indicates a WebSocket load.
	 */
	static inline var TYPE_WEBSOCKET = 16;
	/**
	 * Returned from <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldLoad()">shouldLoad()</a></code> or <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldProcess()">shouldProcess()</a></code> if the load or process request is rejected based on details of the request. 
	 */
	static inline var REJECT_REQUEST = -1;
	/**
	 * 
	 *     <p>Returned from <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldLoad()">shouldLoad()</a></code> or <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldProcess()">shouldProcess()</a></code> if the load/process is rejected based solely on its type (of the above flags).</p>
	 *     <div class="note"><strong>Note:</strong> It is not meant to stop future requests for this type--only the current request.</div> 
	 */
	static inline var REJECT_TYPE = -2;
	/**
	 * 
	 *     <p>Returned from <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldLoad()">shouldLoad()</a></code> or <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldProcess()">shouldProcess()</a></code> if the load/process is rejected based on the server it is hosted on or requested from (aContentLocation or aRequestOrigin), e.g., if you block an IMAGE because it is served from goatse.cx (even if you don't necessarily block other types from that server/domain).</p>
	 *     <div class="note"><strong>Note:</strong> It is not meant to stop future requests for this server--only the current request.</div> 
	 */
	static inline var REJECT_SERVER = -3;
	/**
	 * Returned from <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldLoad()">shouldLoad()</a></code> or <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldProcess()">shouldProcess()</a></code> if the load/process is rejected based on some other criteria. Mozilla callers will handle this like REJECT_REQUEST; third-party implementors may, for example, use this to direct their own callers to consult the extra parameter for additional details. 
	 */
	static inline var REJECT_OTHER = -4;
	/**
	 * Returned from <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldLoad()">shouldLoad()</a></code> or <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContentPolicy#shouldProcess()">shouldProcess()</a></code> if the load or process request is not rejected. 
	 */
	static inline var ACCEPT = 1;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var OTHER = 0;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var SCRIPT = 1;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var IMAGE = 2;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var STYLESHEET = 3;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var OBJECT = 4;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var SUBDOCUMENT = 5;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var CONTROL_TAG = 6;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var RAW_URL = 7;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var DOCUMENT = 8;
	
	function shouldLoad(aContentType:ULong, aContentLocation:NsIURI, aRequestOrigin:NsIURI, aContext:NsISupports, aMimeTypeGuess:ACString, aExtra:NsISupports, aRequestPrincipal:NsIPrincipal) : Short;
	function shouldProcess(aContentType:ULong, aContentLocation:NsIURI, aRequestOrigin:NsIURI, aContext:NsISupports, aMimeType:ACString, aExtra:NsISupports, aRequestPrincipal:NsIPrincipal) : Short;
}
