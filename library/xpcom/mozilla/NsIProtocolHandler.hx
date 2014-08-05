package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIProtocolHandler") extern class NsIProtocolHandler extends NsISupports
{
	/**
	 * A standard full URI with authority component and understanding relative URIs; this includes http and ftp, for example.
	 */
	static inline var URI_STD = 0;
	/**
	 * The protocol doesn't support relative URIs (for example, about and javascript).
	 */
	static inline var URI_NORELATIVE = 1<<0;
	/**
	 * The protocol doesn't have an authority component (for example, file).
	 */
	static inline var URI_NOAUTH = 1<<1;
	/**
	 * URIs for this protocol have no inherent security context, so documents loaded using this protocol should inherit the security context of the document that loads them. 
	 */
	static inline var URI_INHERITS_SECURITY_CONTEXT = 1<<4;
	/**
	 * "Automatic" loads that would replace the document (such as a meta refresh, certain types of XLinks, and other non-user-triggered loads) are not allowed if the originating URI has this protocol flag. Keep in mind that the decision of what constitutes an automatic load is made externally, by the caller of <code><a class="new" href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIScriptSecurityManager#CheckLoadURI()">nsIScriptSecurityManager.CheckLoadURI()</a></code>. Typically, this flag is used by protocols that show highly untrusted content in a viewing area that the user expects to have a lot of control over, such as an email reader. 
	 */
	static inline var URI_FORBIDS_AUTOMATIC_DOCUMENT_REPLACEMENT = 1<<5;
	/**
	 * Anyone can load the URIs for this protocol; for example, any web site can load a URI for this protocol. Web-safe protocols such as HTTP should use this flag. 
	 */
	static inline var URI_LOADABLE_BY_ANYONE = 1<<6;
	/**
	 * URIs using this protocol are <strong>unsafe</strong> if loaded by untrusted web content and may only be loaded by privileged code (for example, code that has the system principal). Various internal protocols use this flag. 
	 */
	static inline var URI_DANGEROUS_TO_LOAD = 1<<7;
	/**
	 * The URIs for this protocol refer to resources that are part of the application's user interface. There are cases in which such resources may be made accessible to untrusted content such as web pages, so this is less restrictive than URI_DANGEROUS_TO_LOAD but more restrictive than URI_LOADABLE_BY_ANYONE. 
	 */
	static inline var URI_IS_UI_RESOURCE = 1<<8;
	/**
	 * URIs for this protocol from other origins should only be allowed if those origins should have access to the local file system. It's up to the application to decide what origins should have such access. Protocols like file that point to local data should set this flag. 
	 */
	static inline var URI_IS_LOCAL_FILE = 1<<9;
	/**
	 * The URIs for this protocol can be loaded only by callers with a principal that subsumes this uri. For example, privileged code and websites that are same origin as this uri. 
	 */
	static inline var URI_LOADABLE_BY_SUBSUMERS = 1<<14;
	/**
	 * Loading channels from this protocol has side-effects that make it unsuitable for saving to a local file. 
	 */
	static inline var URI_NON_PERSISTABLE = 1<<10;
	/**
	 * 
	 *         <p>Channels using this protocol never call OnDataAvailable() on the listener passed to AsyncOpen(), and therefore do not return any usable data. </p>
	 *       
	 */
	static inline var URI_DOES_NOT_RETURN_DATA = 1<<11;
	/**
	 * URIs for this protocol are considered to be local resources. This could be a local file (URI_IS_LOCAL_FILE), a UI resource (URI_IS_UI_RESOURCE), or something else that would not hit the network. 
	 */
	static inline var URI_IS_LOCAL_RESOURCE = 1<<12;
	/**
	 * URIs for this protocol execute script when they are opened. 
	 */
	static inline var URI_OPENING_EXECUTES_SCRIPT = 1<<13;
	/**
	 * This protocol handler can be proxied via SOCKS or HTTP (such as IRC, SMTP, and HTTP, for example). If the protocol supports transparent proxying, the handler should implement the <code><a class="new" href="nsIProxiedProtocolHandler.html" title="">nsIProxiedProtocolHandler</a></code> interface. If the protocol only supports HTTP proxying, it doesn't need to support <code><a class="new" href="nsIProxiedProtocolHandler.html" title="">nsIProxiedProtocolHandler</a></code>, but should instead set the ALLOWS_PROXY_HTTP flag.
	 */
	static inline var ALLOWS_PROXY = 1<<2;
	/**
	 * The protocol handler can be proxied using an HTTP proxy (for example, HTTP and FTP). <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIIOService#newChannelFromURI()">nsIIOService.newChannelFromURI()</a></code> will feed URIs from this protocol handler to the HTTP protocol handler instead. This flag is ignored if ALLOWS_PROXY is not set.
	 */
	static inline var ALLOWS_PROXY_HTTP = 1<<3;
	
	/**
	 * The default port is the port the protocol uses by default. If the protocol doesn't need a port (for example, the "about" protocol), this attribute is -1. Read only.
	 */
	var defaultPort : Long;
	/**
	 * Protocol-specific flags. Read only.
	 * Note: Starting with Firefox 3, one of URI_LOADABLE_BY_ANYONE, URI_DANGEROUS_TO_LOAD, URI_IS_UI_RESOURCE, or URI_IS_LOCAL_FILE must be set on every protocol handler. Current versions of Firefox assume that the URI has URI_LOADABLE_BY_ANYONE set, but this will not work starting with the Mozilla 2 platform.
	 */
	var protocolFlags : ULong;
	/**
	 * The scheme for this protocol ("file", "http", and so forth). Read only.
	 */
	var scheme : ACString;
}
