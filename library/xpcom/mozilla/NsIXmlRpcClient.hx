package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXmlRpcClient") extern class NsIXmlRpcClient
{
	/**
	 * The URL of the XML-RPC server
	 * ReadOnly.
	 */
	var serverURL : NsIURL;
	/**
	 * Whether or not a call is in progress
	 * ReadOnly.
	 */
	var inProgress : Bool;
	/**
	 * The most recent XML-RPC fault from returned from this server. null if the last call didn't return an XML-RPC fault.
	 * ReadOnly.
	 */
	var fault : NsIXmlRpcFault;
	/**
	 * The most recent XML-RPC call result returned from this server. null if the last call didn't return a valid result.
	 * ReadOnly.
	 */
	var result : NsISupports;
	/**
	 * The most recent HTTP status code returned from this server. null if the server was unreachable or not yet contacted.
	 * ReadOnly.
	 */
	var responseStatus : ULong;
	/**
	 * The most recent HTTP status code returned from this server. null if the server was unreachable or not yet contacted.
	 * ReadOnly.
	 */
	var responseString : ULong;
}
