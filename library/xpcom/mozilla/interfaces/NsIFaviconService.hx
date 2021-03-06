package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFaviconService") extern class NsIFaviconService extends NsISupports
{
	public static inline function getService() : NsIFaviconService
	{
		return xpcom.Components.classes[cast "@mozilla.org/browser/favicon-service;1"].getService(NsIFaviconService);
	}
	
	/**
	 * The default favicon URI. Read only.
	 */
	var defaultFavicon : NsIURI;
	
	function addFailedFavicon(aFaviconURI:NsIURI) : Void;
	function expireAllFavicons() : Void;
	function getFaviconData(aFaviconURI:NsIURI, aMimeType:{value:AUTF8String}, ?aDataLen:{value:ULong}, aData:Array<Octet>) : Void;
	function getFaviconDataAsDataURL(aFaviconURI:NsIURI) : AString;
	function getFaviconForPage(aPageURI:NsIURI) : NsIURI;
	function getFaviconImageForPage(aPageURI:NsIURI) : NsIURI;
	function getFaviconLinkForIcon(aFaviconURI:NsIURI) : NsIURI;
	function isFailedFavicon(aFaviconURI:NsIURI) : Bool;
	function removeFailedFavicon(aFaviconURI:NsIURI) : Void;
	function setAndLoadFaviconForPage(aPageURI:NsIURI, aFaviconURI:NsIURI, aForceReload:Bool, aFaviconLoadType:ULong, ?aCallback:NsIFaviconDataCallback) : Void;
	function setFaviconData(aFaviconURI:NsIURI, aData:Array<Octet>, aDataLen:ULong, aMimeType:AUTF8String, aExpiration:PRTime) : Void;
	function setFaviconDataFromDataURL(aFaviconURI:NsIURI, aDataURL:AString, aExpiration:PRTime) : Void;
	function setFaviconUrlForPage(aPageURI:NsIURI, aFaviconURI:NsIURI) : Void;
}
