package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIURI") extern class NsIURI extends NsISupports
{
	/**
	 * The URI host with an ASCII compatible encoding. Follows the IDNA draft specification for converting internationalized domain names (UTF-8) to ASCII for compatibility with existing Internet infrastructure. Read only.
	 */
	var asciiHost : ACString;
	/**
	 * The URI spec with an ASCII compatible encoding. The host portion follows the IDNA draft spec. Other parts are URL-escaped per the rules of RFC3986. The result is strictly ASCII. Read only.
	 */
	var asciiSpec : ACString;
	/**
	 * Returns if there is a reference portion (the part after the "#") of the URI.
	 */
	var hasRef : Bool;
	/**
	 * The host is the Internet domain name to which this URI refers. It could be an IPv4 (or IPv6) address literal. If supported, it could be a non-ASCII internationalized domain name.
	 * Note: Characters are not escaped.
	 */
	var host : AUTF8String;
	/**
	 * The "host:port" part of the URI (or simply the host, if port is -1).
	 * Note: Characters are not escaped.
	 */
	var hostPort : AUTF8String;
	/**
	 * The charset of the document from which this URI originated. An empty value implies UTF-8.
	 * If this value is something other than UTF-8 then the URI components (for example spec, prePath, username, and so on) are all fully URL-escaped. Otherwise, the URI components may contain unescaped multibyte UTF-8 characters. Read only.
	 */
	var originCharset : ACString;
	/**
	 * The optional password, assuming the preHost consists of "username:password".
	 * Note: Some characters may be escaped.
	 */
	var password : AUTF8String;
	/**
	 * The path, typically including at least a leading '/' (but may also be empty, depending on the protocol).
	 * Note: Some characters may be escaped.
	 */
	var path : AUTF8String;
	/**
	 * The URI's port. A port value of -1 corresponds to the protocol's default port (for example -1 implies port 80 for HTTP URIs).
	 */
	var port : Long;
	/**
	 * The prePath returns the string before the path (such as "scheme://user:password@host:port").
	 * This is related to the Web Origin Concept of RFC6454.
	 * This is useful for authentication, managing sessions, or for checking the origin of an URI to prevent cross-site scripting attacks while using methods such as window.postMessage().
	 * Note: Some characters may be escaped. Read only.
	 */
	var prePath : AUTF8String;
	/**
	 * Returns the reference portion (the part after the "#") of the URI. If there is not one, an empty string is returned.
	 * Note: Some characters may be escaped.
	 */
	var ref : AUTF8String;
	/**
	 * The scheme is the protocol to which this URI refers. The scheme is restricted to the US-ASCII charset per RFC3986.
	 * Warning: Setting this is highly discouraged outside of a protocol handler implementation, since doing so will generally lead to unpredictable results.
	 */
	var scheme : ACString;
	/**
	 * Returns a string representation of the URI. Setting the spec causes the new spec to be parsed using the rules for the scheme the URI currently has. If the string cannot be parsed as a URI, NS_ERROR_MALFORMED_URI thrown.
	 * Warning: Because parsing the string is done using the current URI's scheme, setting the spec to a URI with a different scheme will produce incorrect results. Therefore, only protocol handler implementations should do this.
	 * If the URI stores information from the nsIIOService interface's nsIIOService.newURI() call that created it, other than just the parsed string, the behavior of this information when setting the spec attribute is undefined.
	 * Note: Some characters may be escaped.
	 */
	var spec : AUTF8String;
	/**
	 * Returns a string representation of the URI without the ref (part after the #) portion.
	 * Note: Some characters may be escaped.
	 */
	var specIgnoringRef : AUTF8String;
	/**
	 * The optional username, assuming the preHost consists of "username:password".
	 * Note: Some characters may be escaped.
	 */
	var username : AUTF8String;
	/**
	 * The "username:password" (or username only if the value doesn't contain a ':').
	 * Note: Some characters may be escaped.
	 */
	var userPass : AUTF8String;
	
	function clone() : NsIURI;
	function cloneIgnoringRef() : NsIURI;
	function equals(other:NsIURI) : Bool;
	function equalsExceptRef(other:NsIURI) : Bool;
	function resolve(relativePath:AUTF8String) : AUTF8String;
	function schemeIs(scheme:String) : Bool;
}
