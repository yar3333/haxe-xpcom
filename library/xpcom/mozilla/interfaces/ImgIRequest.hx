package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.imgIRequest") extern class ImgIRequest extends NsIRequest
{
	/**
	 *  <p>Nothing to report.</p> 
	 */
	static inline var STATUS_NONE = 0x0;
	/**
	 * We received enough image data from the network or filesystem that we know the width and height of the image, and have thus called SetSize() on the container.
	 */
	static inline var STATUS_SIZE_AVAILABLE = 0x1;
	/**
	 * Used internally by imgRequest to flag that a request is being cancelled as a result of a failure of a proxy holder and not an internal failure. At least I think that's what it does. Regardless, there's no reason for this flag to be public, and it should either go away or become a private state flag within imgRequest. Do not rely on it.
	 */
	static inline var STATUS_LOAD_PARTIAL = 0x2;
	/**
	 * The data has been fully loaded to memory, but not necessarily fully decoded.
	 */
	static inline var STATUS_LOAD_COMPLETE = 0x4;
	/**
	 * An error occurred loading the image.
	 */
	static inline var STATUS_ERROR = 0x8;
	/**
	 * The first frame has been completely decoded.
	 */
	static inline var STATUS_FRAME_COMPLETE = 0x10;
	/**
	 * The whole image has been decoded. 
	 */
	static inline var STATUS_DECODE_COMPLETE = 0x20;
	/**
	 *  <p>CORS modes images can be loaded with.</p> <p>By default, all images are loaded with CORS_NONE and cannot be used cross-origin in context like WebGL.</p> If an HTML img element has the crossorigin attribute set, the imgIRequest will be validated for cross-origin usage with CORS, and, if successful, will have its CORS mode set to the relevant type. 
	 */
	static inline var CORS_NONE = 1;
	static inline var CORS_ANONYMOUS = 2;
	static inline var CORS_USE_CREDENTIALS = 3;
	
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
	
	function cancelAndForgetObserver(aStatus:Nsresult) : Void;
	function clone(aObserver:ImgIDecoderObserver) : ImgIRequest;
	function decrementAnimationConsumers() : Void;
	function getStaticRequest() : ImgIRequest;
	function incrementAnimationConsumers() : Void;
	function lockImage() : Void;
	function requestDecode() : Void;
	function unlockImage() : Void;
}
