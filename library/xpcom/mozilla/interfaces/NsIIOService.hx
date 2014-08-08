package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIIOService") extern class NsIIOService extends NsISupports
{
	public static inline function getService() : NsIIOService return Components.classes[cast "@mozilla.org/network/io-service;1"].getService(Components.interfaces.nsIIOService);
	
	/**
	 * Returns true if networking is in "offline" mode. When in offline mode, attempts to access the network will fail (although this does not necessarily correlate with whether there is actually a network available -- that's hard to detect without causing the dialer to come up). Observers will be notified of changes to this attribute.
	 */
	var offline : Bool;
	
	function allowPort(aPort:Long, aScheme:String) : Bool;
	function extractScheme(urlString:AUTF8String) : ACString;
	function getProtocolFlags(aScheme:String) : ULong;
	function getProtocolHandler(aScheme:String) : NsIProtocolHandler;
	function newChannel(aSpec:AUTF8String, aOriginCharset:String, aBaseURI:NsIURI) : NsIChannel;
	function newChannelFromURI(aURI:NsIURI) : NsIChannel;
	function newFileURI(aFile:NsIFile) : NsIURI;
	function newURI(aSpec:AUTF8String, aOriginCharset:String, aBaseURI:NsIURI) : NsIURI;
}
