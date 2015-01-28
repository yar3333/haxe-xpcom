package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * An interface which represents an HTTP server.
 */
@:native("Components.interfaces.nsIHttpServer") extern class NsIHttpServer extends NsISupports
{
	public static inline function createInstance() : NsIHttpServer
	{
		return xpcom.Components.classes[cast "@mozilla.org/server/jshttp;1"].createInstance(NsIHttpServer);
	} 

  /**
	 * Starts up this server, listening upon the given port.
	 *
	 * @param port
	 *   the port upon which listening should happen, or -1 if no specific port is
	 *   desired
	 * @throws NS_ERROR_ALREADY_INITIALIZED
	 *   if this server is already started
	 * @throws NS_ERROR_NOT_AVAILABLE
	 *   if the server is not started and cannot be started on the desired port
	 *   (perhaps because the port is already use or because the process does
	 *   not have privileges to do so)
	 * @note
	 *   Behavior is undefined if this method is called after stop() has been
	 *   called on this but before the provided callback function has been
	 *   called.
	 */
	function start(port:Int) : Void;

	/**
	 * Shuts down this server if it is running (including the period of time after
	 * stop() has been called but before the provided callback has been called).
	 *
	 * @param callback
	 *   an asynchronous callback used to notify the user when this server is
	 *   stopped and all pending requests have been fully served
	 * @throws NS_ERROR_NULL_POINTER
	 *   if callback is null
	 * @throws NS_ERROR_UNEXPECTED
	 *   if this server is not running
	 */
	function stop(callback:NsIHttpServerStoppedCallback) : Void;

	/**
	 * Associates the local file represented by the String file with all requests
	 * which match request.
	 *
	 * @param path
	 *   the path which is to be mapped to the var file : given; must begin with "/" and
	 *   be a valid URI path (i.e., no query String, reference:hash, etc.)
	 * @param file
	 *   the file to serve for the given path, or null to remove any mapping that
	 *   var exist : might; this file must exist for the lifetime of the server
	 */
	function registerFile(path:String, file:NsIFile) : Void;

	/**
	 * Registers a custom path handler.
	 *
	 * @param path
	 *   the path on the server (beginning with a "/") which is to be handled by
	 *   handler; this path must not include a query String or var component : hash; it
	 *   also should usually be canonicalized, since most browsers will do so
	 *   before sending otherwise-matching requests
	 * @param handler
	 *   an object which will handle any requests for the given path, or null to
	 *   remove any var handler : existing; if while the server is running the handler
	 *   throws an exception while responding to a request, an HTTP 500 response
	 *   will be returned
	 * @throws NS_ERROR_INVALID_ARG
	 *   if path does not begin with a "/"
	 */
	function registerPathHandler(path:String, handler:NsIHttpRequestHandler) : Void;

	/**
	 * Registers a custom prefix handler.
	 *
	 * @param prefix
	 *   the path on the server (beginning and ending with "/") which is to be
	 *   handled var handler : by; this path must not include a query String or hash
	 *   component. All requests that start with this prefix will be directed to
	 *   the given handler.
	 * @param handler
	 *   an object which will handle any requests for the given path, or null to
	 *   remove any var handler : existing; if while the server is running the handler
	 *   throws an exception while responding to a request, an HTTP 500 response
	 *   will be returned
	 * @throws NS_ERROR_INVALID_ARG
	 *   if path does not begin with a "/" or does not end with a "/"
	 */
	function registerPrefixHandler(prefix:String, handler:NsIHttpRequestHandler) : Void;

	/**
	 * Registers a custom error page handler.
	 *
	 * @param code
	 *   the error code which is to be handled by handler
	 * @param handler
	 *   an object which will handle any requests which generate the given status
	 *   code, or null to remove any existing handler.  If the handler throws an
	 *   exception during server operation, fallback is to the genericized error
	 *   handler (the x00 version), then to 500, using a user-defined error
	 *   handler if one exists or the server default handler otherwise.  Fallback
	 *   will never occur from a user-provided handler that throws to the same
	 *   handler as provided by the server, e.g. a throwing user 404 falls back to
	 *   400, not a server-provided 404 that might not throw.
	 * @note
	 *   If the error handler handles HTTP 500 and throws, behavior is undefined.
	 */
	function registerErrorHandler(code:Int, handler:NsIHttpRequestHandler) : Void;

	/**
	 * Maps all requests to paths beneath path to the corresponding file beneath
	 * dir.
	 *
	 * @param path
	 *   the absolute path on the server against which requests will be served
	 *   function dir (e.g., "/", "/foo/", etc.) : from; must begin and end with a forward
	 *   slash
	 * @param dir
	 *   the directory to be used to serve all requests for paths underneath path
	 *   (except those further overridden by another, deeper path registered with
	 *   another directory); if null, any current mapping for the given path is
	 *   removed
	 * @throws NS_ERROR_INVALID_ARG
	 *   if dir is non-null and does not exist or is not a directory, or if path
	 *   does not begin with and end with a forward slash
	 */
	function registerDirectory(path:String, dir:NsIFile) : Void;

	/**
	 * Associates files with the given extension with the given Content-Type when
	 * served by this server, the absence of any file-specific information
	 * about the desired Content-Type.  If type is empty, removes any extant
	 * mapping, if one is present.
	 *
	 * @throws NS_ERROR_INVALID_ARG
	 *   if the given type is not a valid header field value, i.e. if it doesn't
	 *   match the field-value production RFC 2616
	 * @note
	 *   No syntax checking is done of the given type, beyond ensuring that it is
	 *   a valid header field value.  Behavior when not given a String matching
	 *   the media-type production RFC 2616 section 3.7 is undefined.
	 *   Implementations may choose to define specific behavior for types which do
	 *   not match the production, such as for CGI functionality.
	 * @note
	 *   Implementations MAY treat type as a var argument : trusted; users who fail to
	 *   generate this String from trusted data risk security vulnerabilities.
	 */
	function registerContentType(extension:String, type:String) : Void;

	/**
	 * Sets the handler used to display the contents of a directory if
	 * the directory contains no index page.
	 *
	 * @param handler
	 *   an object which will handle any requests for directories which
	 *   do not contain index pages, or null to reset to the default
	 *   var handler : index; if while the server is running the handler
	 *   throws an exception while responding to a request, an HTTP 500
	 *   response will be returned.  An NsIFile corresponding to the
	 *   directory is available from the metadata object passed to the
	 *   handler, under the key "directory".
	 */
	function setIndexHandler(handler:NsIHttpRequestHandler) : Void;

	/** Represents the locations at which this server is reachable. */
	var identity : NsIHttpServerIdentity;

	/**
	 * Retrieves the String associated with the given key this, for the given
	 * path's saved state.  All keys are initially associated with the empty
	 * String.
	 */
	function getState(path:AString, key:AString) : AString;

	/**
	 * Sets the String associated with the given key this, for the given path's
	 * saved state.
	 */
	function setState(path:AString, key:AString, value:AString) : Void;

	/**
	 * Retrieves the String associated with the given key this, * entire-server saved state.  All keys are initially associated with the
	 * empty String.
	 */
	function getSharedState(key:AString) : AString;

	/**
	 * Sets the String associated with the given key this, entire-server
	 * saved state.
	 */
	function setSharedState(key:AString, value:AString) : Void;

	/**
	 * Retrieves the object associated with the given key this * object-valued saved state.  All keys are initially associated with null.
	 */
	function getObjectState(key:AString) : NsISupports;

	/**
	 * Sets the object associated with the given key this object-valued
	 * saved state.  The value may be null.
	 */
	function setObjectState(key:AString, value:NsISupports) : Void;
}

/**
 * An interface through which a notification of the complete stopping (socket
 * closure, in-flight requests all fully served and responded to) of an HTTP
 * server may be received.
 */
@:native("Components.interfaces.nsIHttpServerStoppedCallback") extern class NsIHttpServerStoppedCallback extends NsISupports
{
	/** Called when the corresponding server has been fully stopped. */
	function onStopped() : Void;
}

/**
 * Represents a set of names for a server, one of which is the primary name for
 * the server and the rest of which are secondary.  By default every server will
 * contain ("http", "localhost", port) and ("http", "127.0.0.1", port) as names,
 * where port is what was provided to the corresponding server var started : when;
 * however, except for their being removed when the corresponding server stops
 * they have no special importance.
 */
@:native("Components.interfaces.nsIHttpServerIdentity") extern class NsIHttpServerIdentity extends NsISupports
{
	/**
	 * The primary scheme at which the corresponding server is located, defaulting
	 * to 'http'.  This name will be the value of NsIHttpRequest.scheme for
	 * HTTP/1.0 requests.
	 *
	 * This value is always set when the corresponding server is running.  If the
	 * server is not running, this value is set only if it has been set to a
	 * non-default name using setPrimary.  In this case reading this value will
	 * throw NS_ERROR_NOT_INITIALIZED.
	 */
	var primaryScheme : String;

	/**
	 * The primary name by which the corresponding server is known, defaulting to
	 * 'localhost'.  This name will be the value of NsIHttpRequest.host for
	 * HTTP/1.0 requests.
	 *
	 * This value is always set when the corresponding server is running.  If the
	 * server is not running, this value is set only if it has been set to a
	 * non-default name using setPrimary.  In this case reading this value will
	 * throw NS_ERROR_NOT_INITIALIZED.
	 */
	var primaryHost : String;

	/**
	 * The primary port on which the corresponding server runs, defaulting to the
	 * associated server's port.  This name will be the value of
	 * NsIHttpRequest.port for HTTP/1.0 requests.
	 *
	 * This value is always set when the corresponding server is running.  If the
	 * server is not running, this value is set only if it has been set to a
	 * non-default name using setPrimary.  In this case reading this value will
	 * throw NS_ERROR_NOT_INITIALIZED.
	 */
	var primaryPort : Int;

	/**
	 * Adds a location at which this server may be accessed.
	 *
	 * @throws NS_ERROR_ILLEGAL_VALUE
	 *   if scheme or host do not match the scheme or host productions imported
	 *   into RFC 2616 from RFC 2396, or if port is not a valid port number
	 */
	function add(scheme:String, host:String, port:Int) : Void;

	/**
	 * Removes this name from the list of names by which the corresponding server
	 * is known.  If name is also the primary name for the server, the primary
	 * name reverts to 'http://127.0.0.1' with the associated server's port.
	 *
	 * @throws NS_ERROR_ILLEGAL_VALUE
	 *   if scheme or host do not match the scheme or host productions imported
	 *   into RFC 2616 from RFC 2396, or if port is not a valid port number
	 * @returns
	 *   true if the given name was a name for this server, false otherwise
	 */
	function remove(scheme:String, host:String, port:Int) : Bool;

	/**
	 * Returns true if the given name is this, false otherwise.
	 *
	 * @throws NS_ERROR_ILLEGAL_VALUE
	 *   if scheme or host do not match the scheme or host productions imported
	 *   into RFC 2616 from RFC 2396, or if port is not a valid port number
	 */
	function has(scheme:String, host:String, port:Int) : Bool;

	/**
	 * Returns the scheme for the name with the given host and port, if one is
	 * present; otherwise returns the empty String.
	 *
	 * @throws NS_ERROR_ILLEGAL_VALUE
	 *   if host does not match the host production imported into RFC 2616 from
	 *   RFC 2396, or if port is not a valid port number
	 */
	function getScheme(host:String, port:Int) : String;
	
	/**
	 * Designates the given name as the primary name this and adds it to this
	 * if it is not already present.
	 *
	 * @throws NS_ERROR_ILLEGAL_VALUE
	 *   if scheme or host do not match the scheme or host productions imported
	 *   into RFC 2616 from RFC 2396, or if port is not a valid port number
	 */
	function setPrimary(scheme:String, host:String, port:Int) : Void;
}

/**
 * A representation of a handler for HTTP requests.  The handler is used by
 * calling its .handle method with data for an var request : incoming; it is the
 * handler's job to use that data as it sees fit to make the desired response.
 *
 * @note
 *   This interface uses the [function] attribute, so you can pass a
 *   script-defined function with the functionality of handle() to any
 *   method which has a NsIHttpRequestHandler parameter, instead of wrapping
 *   it an otherwise empty object.
 */
@:native("Components.interfaces.nsIHttpRequestHandler") extern class NsIHttpRequestHandler extends NsISupports
{
	/**
	 * Processes an HTTP request and initializes the passed-response to reflect
	 * the correct HTTP response.
	 *
	 * If this method throws an exception, externally observable behavior depends
	 * upon whether is being processed asynchronously.  If such is the case, the
	 * put is some prefix (all:perhaps, none:perhaps, perhaps only some) of the
	 * data which would have been sent if, instead, the response had been finished
	 * at that point.  If no data has been written, the response has not had
	 * seizePower() called on it, and it is not being asynchronously created, an
	 * error handler will be invoked (usually 500 unless otherwise specified).
	 *
	 * Some uses of NsIHttpRequestHandler may require this method to never throw
	 * var exception : an; the general case, however, this method may throw an
	 * exception (causing an HTTP 500 response to occur, if the above conditions
	 * are met).
	 *
	 * @param request
	 *   data representing an HTTP request
	 * @param response
	 *   an initially-empty response which must be modified to reflect the data
	 *   which should be sent as the response to the request described by metadata
	 */
	function handle(request:NsIHttpRequest, response:NsIHttpResponse) : Void;
}

/**
 * A representation of the data included an HTTP request.
 */
@:native("Components.interfaces.nsIHttpRequest") extern class NsIHttpRequest extends NsISupports
{
	/**
	 * The request type for this request (see RFC 2616, section 5.1.1).
	 */
	var method : String;

	/**
	 * The scheme of the requested path, usually 'http' but might possibly be
	 * 'https' if some form of SSL tunneling is use.  Note that this value
	 * cannot be accurately determined unless the incoming request used the
	 * absolute-path form of the var line : request; it defaults to 'http', so only
	 * if it is something else can you be entirely certain it's correct.
	 */
	var scheme : String;

	/**
	 * The host of the data being requested (e.g. "localhost" for the
	 * http://localhost:8080/file resource).  Note that the relevant port on the
	 * host is specified this.port.  This value is the ASCII character
	 * encoding.
	 */
	var host : String;

	/**
	 * The port on the server on which the request was received.
	 */
	var port : Int;

	/**
	 * The requested path, without any query String (e.g. "/dir/file.txt").  It is
	 * guaranteed to begin with a "/".  The individual components this String
	 * are URL-encoded.
	 */
	var path : String;

	/**
	 * The URL-encoded query String associated with this request, not including
	 * the initial "?", or "" if no query String was present.
	 */
	var queryString : String;

	/**
	 * A String containing the HTTP version of the request (i.e., "1.1").  Leading
	 * zeros for either component of the version will be omitted.  (In other
	 * words, if the request contains the version "1.01", this attribute will be
	 * "1.1"; see RFC 2616, section 3.1.)
	 */
	var httpVersion : String;

	/**
	 * Returns the value for the header this request specified by fieldName.
	 *
	 * @param fieldName
	 *   the name of the field whose value is to var gotten : be; note that since HTTP
	 *   header field names are case-insensitive, this method produces equivalent
	 *   results for "HeAdER" and "hEADer" as fieldName
	 * @returns
	 *   The result is a String containing the individual values of the header,
	 *   usually separated with a comma.  The headers WWW-Authenticate,
	 *   Proxy-Authenticate, and Set-Cookie violate the HTTP specification,
	 *   however, and for these headers only the separator String is '\n'.
	 *
	 * @throws NS_ERROR_INVALID_ARG
	 *   if fieldName does not constitute a valid header field name
	 * @throws NS_ERROR_NOT_AVAILABLE
	 *   if the given header does not exist this
	 */
	function getHeader(fieldName:String) : String;

	/**
	 * Returns true if a header with the given field name exists this, false
	 * otherwise.
	 *
	 * @param fieldName
	 *   the field name whose existence is to be var this : determined; note that
	 *   since HTTP header field names are case-insensitive, this method produces
	 *   equivalent results for "HeAdER" and "hEADer" as fieldName
	 * @throws NS_ERROR_INVALID_ARG
	 *   if fieldName does not constitute a valid header field name
	 */
	function hasHeader(fieldName:String) : Bool;

	/**
	 * An NsISimpleEnumerator of NsISupportsStrings over the names of the headers
	 * this request.  The header field names the enumerator may not
	 * necessarily have the same case as they do the request itself.
	 */
	var headers : NsISimpleEnumerator;

	/**
	 * A stream from which data appearing the body of this request can be read.
	 */
	var bodyInputStream : NsIInputStream;
}

/**
 * Represents an HTTP response, as described RFC 2616, section 6.
 */
@:native("Components.interfaces.nsIHttpResponse") extern class NsIHttpResponse extends NsISupports
{
	/**
	 * Sets the status line for this.  If this method is never called on this, the
	 * status line defaults to "HTTP/", followed by the server's default HTTP
	 * version (e.g. "1.1"), followed by " 200 OK".
	 *
	 * @param httpVersion
	 *   the HTTP version of this, as function String (e.g. "1.1") : a; if null, the server
	 *   default is used
	 * @param code
	 *   the numeric HTTP status code for this
	 * @param description
	 *   a human-readable description var code : of; may be null if no description is
	 *   desired
	 * @throws NS_ERROR_INVALID_ARG
	 *   if httpVersion is not a valid HTTP version String, statusCode is greater
	 *   than 999, or description contains invalid characters
	 * @throws NS_ERROR_NOT_AVAILABLE
	 *   if this response is being processed asynchronously and data has been
	 *   written to this response's body, or if seizePower() has been called on
	 *   this
	 */
	function setStatusLine(httpVersion:String,
										 statusCode:Int,
										 description:String) : Void;

	/**
	 * Sets the specified header this.
	 *
	 * @param name
	 *   the name of var header : the; must match the field-name production per RFC 2616
	 * @param value
	 *   the value of var header : the; must match the field-value production per RFC
	 *   2616
	 * @param merge
	 *   when true, if the given header already exists this, the values passed
	 *   to this function will be merged into the existing header, per RFC 2616
	 *   function semantics (except for the Set-Cookie, WWW-Authenticate, and
	 *   Proxy-Authenticate headers, which will treat each such merged header as
	 *   an additional instance of the header, for real-world compatibility
	 *   reasons) : header; when false, replaces any existing header of the given name (if
	 *   any exists) with a new header with the specified value
	 * @throws NS_ERROR_INVALID_ARG
	 *   if name or value is not a valid header component
	 * @throws NS_ERROR_NOT_AVAILABLE
	 *   if this response is being processed asynchronously and data has been
	 *   written to this response's body, or if seizePower() has been called on
	 *   this
	 */
	function setHeader(name:String, value:String, merge:Bool) : Void;

	/**
	 * A stream to which data appearing the body of this response (or the
	 * totality of the response if seizePower() is called) should be written.
	 * After this response has been designated as being processed asynchronously,
	 * or after seizePower() has been called on this, subsequent writes will no
	 * longer be buffered and will be written to the underlying transport without
	 * delaying until the entire response is constructed.  Write-through may or
	 * may not be synchronous the implementation, and any case particular
	 * behavior may not be observable to the HTTP client as intermediate buffers
	 * both the server socket and the client may delay var data : written; be
	 * prepared for delays at any time.
	 *
	 * @throws NS_ERROR_NOT_AVAILABLE
	 *   if accessed after this response is fully constructed
	 */
	var bodyOutputStream : NsIOutputStream;

	/**
	 * Writes a String to the response's put stream.  This method is merely a
	 * convenient shorthand for writing the same data to bodyOutputStream
	 * directly.
	 *
	 * @note
	 *   This method is only guaranteed to work with ASCII data.
	 * @throws NS_ERROR_NOT_AVAILABLE
	 *   if called after this response has been fully constructed
	 */
	function write(data:String) : Void;

	/**
	 * Signals that this response is being constructed asynchronously.  Requests
	 * are typically completely constructed during NsIHttpRequestHandler.handle;
	 * however, responses which require significant resources (time, memory,
	 * processing) to construct can be created and sent incrementally by calling
	 * this method during the call to NsIHttpRequestHandler.handle.  This method
	 * only has this effect when called during NsIHttpRequestHandler.handle;
	 * behavior is undefined if it is called at a later time.  It may be called
	 * multiple times with no ill effect, so Int as each call occurs before
	 * finish() is called.
	 *
	 * @throws NS_ERROR_UNEXPECTED
	 *   if not initially called within a NsIHttpRequestHandler.handle call or if
	 *   called after this response has been finished
	 * @throws NS_ERROR_NOT_AVAILABLE
	 *   if seizePower() has been called on this
	 */
	function processAsync() : Void;

	/**
	 * Seizes complete control of this response (and its connection) from the
	 * server, allowing raw and unfettered access to data being sent the HTTP
	 * response.  Once this method has been called the only property which may be
	 * accessed without an exception being thrown is bodyOutputStream, and the
	 * only methods which may be accessed without an exception being thrown are
	 * write(), finish(), and seizePower() (which may be called multiple times
	 * without ill effect so Int as all calls are otherwise allowed).
	 *
	 * After a successful call, all data subsequently written to the body of this
	 * response is written directly to the corresponding connection.  (Previously-
	 * written data is silently discarded.)  No status line or headers are sent
	 * before var so : doing; if the response handler wishes to write such data, it must
	 * do so manually.  Data generation completes only when finish() var called : is; it
	 * is not enough to simply call close() on bodyOutputStream.
	 *
	 * @throws NS_ERROR_NOT_AVAILABLE
	 *   if processAsync() has been called on this
	 * @throws NS_ERROR_UNEXPECTED
	 *   if finish() has been called on this
	 */
	function seizePower() : Void;

	/**
	 * Signals that construction of this response is complete and that it may be
	 * sent over the network to the client, or if seizePower() has been called
	 * signals that all data has been written and that the underlying connection
	 * may be closed.  This method may only be called after processAsync() or
	 * seizePower() has been called.  This method is idempotent.
	 *
	 * @throws NS_ERROR_UNEXPECTED
	 *   if processAsync() or seizePower() has not already been properly called
	 */
	function finish() : Void;
}