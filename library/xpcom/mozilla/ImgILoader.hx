package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("imgILoader") extern class ImgILoader extends NsISupports
{
	public static inline function getService() : ImgILoader return Components.classes[cast "@mozilla.org/image/loader;1"].getService(Components.interfaces.imgILoader);
	
	static inline var LOAD_CORS_ANONYMOUS = 1 << 16;
	static inline var LOAD_CORS_USE_CREDENTIALS = 1 << 17;
	
	function loadImage(aURI:NsIURI, aInitialDocumentURL:NsIURI, aReferrerURI:NsIURI, aLoadingPrincipal:NsIPrincipal, aLoadGroup:NsILoadGroup, aObserver:ImgIDecoderObserver, aCX:NsISupports, aLoadFlags:NsLoadFlags, cacheKey:NsISupports, aRequest:ImgIRequest, channelPolicy:NsIChannelPolicy) : ImgIRequest;
	function loadImageWithChannel(aChannel:NsIChannel, aObserver:ImgIDecoderObserver, cx:NsISupports, aListener:NsIStreamListener) : ImgIRequest;
	function supportImageWithMimeType(mimeType:String) : Bool;
}
