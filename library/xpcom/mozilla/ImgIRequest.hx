package xpcom.mozilla;

import xpcom.types.*;

@:native("imgIRequest") extern class ImgIRequest extends NsIRequest
{
	/**
	 * The CORS mode that this image was loaded with. Read only.
	 */
	var CORSMode : Long;
	/**
	 * Read only.
	 */
	var decoderObserver : ImgIDecoderObserver;
	/**
	 * The image container. Read only.
	 */
	var image : ImgIContainer;
	/**
	 * The principal gotten from the channel the image was loaded from. Read only.
	 */
	var imagePrincipal : NsIPrincipal;
	/**
	 * Status flags of the STATUS_* variety. Read only.
	 */
	var imageStatus : ULong;
	/**
	 * Read only.
	 */
	var mimeType : String;
	/**
	 * The URI the image load was started with. Note that this might not be the actual URI for the image (for example if HTTP redirects happened during the load). Read only.
	 */
	var URI : NsIURI;
}
