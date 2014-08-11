package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIChannel") extern class NsIChannel extends NsIRequest
{
	/**
	 * Set (for example by the docshell) to indicate whether or not the channel corresponds to a document URI.
	 */
	static inline var LOAD_DOCUMENT_URI = 16;
	/**
	 * If the end consumer for this load has been retargeted after discovering its content, this flag will be set:
	 */
	static inline var LOAD_RETARGETED_DOCUMENT_URI = 17;
	/**
	 * <p>This flag is set to indicate that this channel is replacing another channel. This means that:</p>
	 * <ol>
	 * <li>The stream listener this channel will be notifying was initially passed to the <code><a href="nsIChannel.html#asyncOpen()">asyncOpen()</a></code> method of some other channel</li>
	 * <li>This channel's URI is a better identifier of the resource being accessed than this channel's originalURI.</li>
	 * </ol>
	 * This flag can be set, for example, for redirects or for cases when a single channel has multiple parts to it (and thus can follow onStopRequest with another onStartRequest/onStopRequest pair, each pair for a different request).
	 */
	static inline var LOAD_REPLACE = 18;
	/**
	 * Set (for example by the docshell) to indicate whether or not the channel corresponds to an initial document URI load (for example link click).
	 */
	static inline var LOAD_INITIAL_DOCUMENT_URI = 19;
	/**
	 * Set (For example by the URILoader) to indicate whether or not the end consumer for this load has been determined.
	 */
	static inline var LOAD_TARGETED = 20;
	/**
	 * <p>If this flag is set, the channel should call the content sniffers as described in <code><a class="external" href="http://mxr.mozilla.org/mozilla-central/source/netwerk/build/nsNetCID.h" rel="custom">netwerk/build/nsNetCID.h</a></code> about NS_CONTENT_SNIFFER_CATEGORY.</p>
	 * <p>See <a href="nsIContentSniffer.html">nsIContentSniffer [en-US]</a></p>
	 * <div class="note"><strong>Note:</strong> Channels may ignore this flag; however, new channel implementations should only do so with good reason.</div>
	 */
	static inline var LOAD_CALL_CONTENT_SNIFFERS = 21;
	/**
	 * This flag tells the channel to use URI classifier service to check the URI when opening the channel.
	 */
	static inline var LOAD_CLASSIFY_URI = 22;
	
	/**
	 * The character set of the channel's content if available and if applicable. This attribute only applies to textual data.
	 * Setting contentCharset before the channel has been opened provides a hint to the channel on what the charset should be. The behavior is similar to contentType.
	 * The value of the contentCharset attribute is a mixed case string.
	 */
	var contentCharset : ACString;
	/**
	 * The length of the data associated with the channel if available. A value of -1 indicates that the content length is unknown.
	 * Note: As of Gecko 19.0, this parameter changed from long to int64_t. In earlier versions callers could get the "content-length" property as 64-bit value by QueryInterfacing the channel to nsIPropertyBag2, if that interface is exposed by the channel.
	 */
	var contentLength : Int64;
	/**
	 * The MIME type of the channel's content if available.
	 * Note: The content type can often be wrongly specified (For example wrong file extension, wrong MIME type, wrong document type stored on a server and so on.), and the caller most likely wants to verify with the actual data.
	 * Setting contentType before the channel has been opened provides a hint to the channel as to what the MIME type is. The channel may ignore this hint in deciding on the actual MIME type that it will report.
	 * Setting contentType after onStartRequest has been fired or after open() is called will override the type determined by the channel.
	 * Setting contentType between the time that asyncOpen() is called and the time when onStartRequest is fired has undefined behavior at this time.
	 * The value of the contentType attribute is a lowercase string. A value assigned to this attribute will be parsed and normalized as follows:
	 * Any parameters (delimited with a ';') will be stripped.
	 * If a charset parameter is given, then its value will replace the the contentCharset attribute of the channel.
	 * The stripped contentType will be lowercased. Any implementation of nsIChannel must follow these rules.
	 */
	var contentType : ACString;
	/**
	 * The notification callbacks for the channel. This is set by clients, who wish to provide a means to receive progress, status and protocol-specific notifications. If this value is null, the channel implementation may use the notification callbacks from its load group. The channel may also query the notification callbacks from its load group if its notification callbacks do not supply the requested interface.
	 * Interfaces commonly requested include: nsIProgressEventSink, nsIPrompt, and nsIAuthPrompt / nsIAuthPrompt2.
	 * When the channel is done, it must not continue holding references to this object.
	 * Note: A channel implementation should take care when "caching" an interface pointer queried from its notification callbacks. If the notification callbacks are changed, then a cached interface pointer may become invalid and may therefore need to be re-queried.
	 */
	var notificationCallbacks : NsIInterfaceRequestor;
	/**
	 * The original URI used to construct the channel. This is used in the case of a redirect or URI "resolution" (For example resolving a resource: URI to a file: URI) so that the original pre-redirect URI can still be obtained.   This is also used as the RI of the document resulting from the channel, unless the channel has the LOAD_REPLACE flag set.  This is never null. Attempts to set it to null must throw.
	 * Note: This is distinctly different from the http Referer (referring URI), which is typically the page that contained the original URI (accessible from nsIHttpChannel.)
	 */
	var originalURI : NsIURI;
	/**
	 * The owner, corresponding to the entity that is responsible for this channel. Used by the security manager to grant or deny privileges to mobile code loaded from this channel.
	 * Note: This is a strong reference to the owner, so if the owner is also holding a strong reference to the channel, care must be taken to explicitly drop its reference to the channel.
	 */
	var owner : NsISupports;
	/**
	 * Transport-level security information (if any, else null) corresponding to the channel, normally presented through the interfaces nsITransportSecurityInfo and nsISSLStatusProvider Read only.
	 */
	var securityInfo : NsISupports;
	/**
	 * The URI corresponding to the channel. Its value is immutable. Read only.
	 */
	var URI : NsIURI;
	
	function asyncOpen(aListener:NsIStreamListener, aContext:NsISupports) : Void;
	function open() : NsIInputStream;
}
