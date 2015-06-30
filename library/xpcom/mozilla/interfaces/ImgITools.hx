package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.imgITools") extern class ImgITools extends NsISupports
{
	public static inline function getService() : ImgITools
	{
		return xpcom.Components.classes[cast "@mozilla.org/image/tools;1"].getService(ImgITools);
	}
	
	/**
	 * Caller provides an input stream and mimetype. We read from the stream
	 * and decompress it (according to the specified mime type) and return
	 * the resulting imgIContainer.
	 *
	 * @param aStream An input stream for an encoded image file.
	 * @param aMimeType Type of image in the stream.
	 */
	function decodeImage(aStream:NsIInputStream, aMimeType:ACString) : ImgIContainer;
	
	/**
	 * Caller provides an image container, and the mime type it should be
	 * encoded to. We return an input stream for the encoded image data.
	 *
	 * @param aContainer An image container.
	 * @param aMimeType Type of encoded image desired (eg "image/png").
	 * @param outputOptions Encoder-specific output options.
	 */
	function encodeImage(aContainer:ImgIContainer, aMimeType:ACString, ?putOptions:String) : NsIInputStream;

	/**
	 * Caller provides an image container, and the mime type it should be
	 * encoded to. We return an input stream for the encoded image data.
	 * The encoded image is scaled to the specified dimensions.
	 *
	 * @param aContainer An image container.
	 * @param aMimeType Type of encoded image desired (eg "image/png").
	 * @param aWidth The size (in pixels) desired for the resulting image. Specify 0 to use the given image's width or height. Values must be >= 0.
	 * @param aHeight The size (in pixels) desired for the resulting image. Specify 0 to use the given image's width or height. Values must be >= 0.
	 * @param outputOptions Encoder-specific output options.
	 */
	function encodeScaledImage(aContainer:ImgIContainer, aMimeType:ACString, aWidth:Int, aHeight:Int, ?putOptions:String) : NsIInputStream;

	/**
	 * Retrieve an image loader that reflects the privacy status of the given document.
	 *
	 * @param doc A document. Must not be null.
	 */
	function getImgLoaderForDocument(doc:NsIDOMDocument) : ImgILoader;

	/**
	 * Retrieve an image cache that reflects the privacy status of the given document.
	 *
	 * @param doc
	 *        A document. Null is allowed, but must _only_ be passed
	 *        when there is no way to obtain a relevant document for
	 *        the current context in which a cache is desired.
	 */
	function getImgCacheForDocument(doc:NsIDOMDocument) : ImgICache;

	/**
	 * Caller provides an image container, and the mime type it should be
	 * encoded to. We return an input stream for the encoded image data.
	 * The encoded image is cropped to the specified dimensions.
	 *
	 * The given offset and size must not exceed the image bounds.
	 *
	 * @param aContainer An image container.
	 * @param aMimeType Type of encoded image desired (eg "image/png").
	 * @param aOffsetX The crop offset (in pixels). Values must be >= 0.
	 * @param aOffsetY The crop offset (in pixels). Values must be >= 0.
	 * @param aWidth The size (in pixels) desired for the resulting image. Specify 0 to use the given image's width or height. Values must be >= 0.
	 * @param aHeight The size (in pixels) desired for the resulting image. Specify 0 to use the given image's width or height. Values must be >= 0.
	 * @param outputOptions Encoder-specific output options.
	 */
	function encodeCroppedImage(aContainer:ImgIContainer, aMimeType:ACString, aOffsetX:Int, aOffsetY:Int, aWidth:Int, aHeight:Int, ?putOptions:String) : NsIInputStream;

	/**
	 * Create a wrapper around a scripted notification observer (ordinarily
	 * imgINotificationObserver cannot be implemented from scripts).
	 *
	 * @param aObserver The scripted observer to wrap
	 */
	//function createScriptedObserver(aObserver:ImgIScriptedNotificationObserver) : ImgINotificationObserver;
}