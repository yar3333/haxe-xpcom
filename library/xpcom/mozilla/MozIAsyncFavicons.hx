package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIAsyncFavicons") extern class MozIAsyncFavicons
{
	function getFaviconURLForPage(aPageURI:NsIURI, aCallback:NsIFaviconDataCallback) : Void;
	function getFaviconDataForPage(aPageURI:NsIURI, aCallback:NsIFaviconDataCallback) : Void;
	function setAndFetchFaviconForPage(aPageURI:NsIURI, aFaviconURI:NsIURI, aForceReload:Bool, aFaviconLoadType:ULong, ?aCallback:NsIFaviconDataCallback) : Void;
	function replaceFaviconData(aFaviconURI:NsIURI, aData:Array<Octet>, aDataLen:ULong, aMimeType:AUTF8String, ?aExpiration:PRTime) : Void;
	function replaceFaviconDataFromDataURL(aFaviconURI:NsIURI, aDataURL:AString, ?aExpiration:PRTime) : Void;
}
