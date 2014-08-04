package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("imgIContainer") extern class ImgIContainer extends NsISupports
{
	/**
	 * Whether this image is animated. You can only be guaranteed that querying this will not throw if STATUS_DECODE_COMPLETE is set on the imgIRequest. Read only. 
	 * Exceptions thrown
	 * 
	 * NS_ERROR_NOT_AVAILABLE
	 * If the animated state cannot be determined.
	 */
	var animated : Bool;
	var animationMode : UShort;
	/**
	 * Get a surface for the current frame. This may be a platform-native, optimized frame, so you cannot inspect its pixel data. Read only. Native code only! Obsolete since Gecko 2.0
	 */
	var currentFrame : GfxASurface;
	/**
	 * The index of the current frame that would be drawn if the image was to be drawn now. Read only.  Obsolete since Gecko 2.0
	 */
	var currentFrameIndex : ULong;
	/**
	 * Whether the current frame is opaque; that is, needs the background painted behind it. Read only.
	 */
	var currentFrameIsOpaque : Bool;
	/**
	 * The height of the container rectangle. In the case of any error, zero is returned, and an exception will be thrown. Read only.
	 */
	var height : PRInt32;
	/**
	 * number of times to loop the image.
	 * Note: -1 means forever. Obsolete since Gecko 2.0
	 */
	var loopCount : Long;
	/**
	 * The total number of frames in this image. Read only. Obsolete since Gecko 2.0
	 */
	var numFrames : ULong;
	/**
	 * Read only. Obsolete since Gecko 1.9.2
	 */
	var preferredAlphaChannelFormat : Gfx_format;
	/**
	 * The type of this image (one of the TYPE_* values above). Read only.
	 */
	var type : UShort;
	/**
	 * The width of the container rectangle. In the case of any error, zero is returned, and an exception will be thrown. Read only.
	 */
	var width : PRInt32;
}
