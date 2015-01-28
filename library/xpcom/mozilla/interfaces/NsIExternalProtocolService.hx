package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIExternalProtocolService") extern class NsIExternalProtocolService extends NsISupports
{
	public static inline function getService() : NsIExternalProtocolService
	{
		return xpcom.Components.classes[cast "@mozilla.org/uriloader/external-protocol-service;1"].getService(NsIExternalProtocolService);
	}
	
	function externalProtocolHandlerExists(aProtocolScheme:String) : Bool;
	function getApplicationDescription(aScheme:AUTF8String) : AString;
	function getProtocolHandlerInfo(aProtocolScheme:ACString) : NsIHandlerInfo;
	function getProtocolHandlerInfoFromOS(aProtocolScheme:ACString, aFound:{value:Bool}) : NsIHandlerInfo;
	function isExposedProtocol(aProtocolScheme:String) : Bool;
	function loadURI(aURI:NsIURI, ?aWindowContext:NsIInterfaceRequestor) : Void;
	function loadUrl(aURL:NsIURI) : Void;
	function setProtocolHandlerDefaults(aHandlerInfo:NsIHandlerInfo, aOSHandlerExists:Bool) : Void;
}
