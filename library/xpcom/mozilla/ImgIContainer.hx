package xpcom.mozilla;

import xpcom.types.*;

@:native("imgIContainer") extern class ImgIContainer extends NsISupports
{
	/**
	 * Enumerated values for the 'type' attribute (below). 
	 */
	static inline var TYPE_RASTER = 0;
	static inline var TYPE_VECTOR = 1;
	/**
	 * 
	 *     <p>Flags for imgIContainer operations.</p>
	 *     <p>Meanings:</p>
	 *     <p>FLAG_NONE: Lack of flags.</p>
	 *     <p>FLAG_SYNC_DECODE: Forces synchronous/non-progressive decode of all available data before the call returns. It is an error to pass this flag from a call stack that originates in a decoder (that is, from a decoder observer event).</p>
	 *     <p>FLAG_DECODE_NO_PREMULTIPLY_ALPHA: Do not premultiply alpha if it is not already premultiplied in the image data.</p>
	 *     <p>FLAG_DECODE_NO_COLORSPACE_CONVERSION: Do not do any colorspace conversion; ignore any embedded profiles, and do not convert to any particular destination space.</p>
	 *     FLAG_CLAMP: Extend the image to the fill area by clamping image sample coordinates instead of by tiling. This only affects '<code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/imgIContainer#draw()">draw()</a></code>'. 
	 */
	static inline var FLAG_NONE = 0x0;
	static inline var FLAG_SYNC_DECODE = 0x1;
	static inline var FLAG_DECODE_NO_PREMULTIPLY_ALPHA = 0x2;
	static inline var FLAG_DECODE_NO_COLORSPACE_CONVERSION = 0x4;
	static inline var FLAG_CLAMP = 0x8;
	/**
	 * 
	 *     <p>Constants for specifying various "special" frames.</p>
	 *     <p>FRAME_FIRST: The first frame FRAME_CURRENT: The current frame.</p>
	 *     FRAME_MAX_VALUE should be set to the value of the maximum constant above, as it is used for ensuring that a valid value was passed in. 
	 */
	static inline var FRAME_FIRST = 0;
	static inline var FRAME_CURRENT = 1;
	static inline var FRAME_MAX_VALUE = 1;
	/**
	 * Animation mode Constants 0 = normal 1 = do not animate 2 = loop once.
	 */
	static inline var kNormalAnimMode = 0;
	/**
	 *  
	 */
	static inline var kDontAnimMode = 1;
	/**
	 *  
	 */
	static inline var kLoopOnceAnimMode = 2;
	/**
	 * 
	 *     <p>"Disposal" method indicates how the image should be handled before the subsequent image is displayed. Do not change these without looking at the implementations using them, struct gif_struct::disposal_method and gif_write() in particular.</p>
	 *     <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/imgIContainer#Clear()">Clear()</a></code> the whole image, revealing.  <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 4 / Thunderbird 3.3 / SeaMonkey 2.1)">Obsolete since Gecko 2.0</span>
	 */
	static inline var kDisposeClearAll = -1;
	/**
	 * Leave frame, let new frame <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/imgIContainer#draw()">draw()</a></code> on top.  <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 4 / Thunderbird 3.3 / SeaMonkey 2.1)">Obsolete since Gecko 2.0</span>
	 */
	static inline var kDisposeNotSpecified = 0;
	/**
	 * Leave frame, let new frame <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/imgIContainer#draw()">draw()</a></code> on top.  <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 4 / Thunderbird 3.3 / SeaMonkey 2.1)">Obsolete since Gecko 2.0</span>
	 */
	static inline var kDisposeKeep = 1;
	/**
	 * <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/imgIContainer#Clear()">Clear()</a></code> the frame's area, revealing bg.  <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 4 / Thunderbird 3.3 / SeaMonkey 2.1)">Obsolete since Gecko 2.0</span>
	 */
	static inline var kDisposeClear = 2;
	/**
	 * Restore the previous(composited) frame.  <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 4 / Thunderbird 3.3 / SeaMonkey 2.1)">Obsolete since Gecko 2.0</span>
	 */
	static inline var kDisposeRestorePrevious = 3;
	/**
	 * All color components of the frame, including alpha, const long kBlendOver = 1; // The frame should be composited onto the output buffer.  <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 4 / Thunderbird 3.3 / SeaMonkey 2.1)">Obsolete since Gecko 2.0</span>
	 */
	static inline var kBlendSource = 0;
	
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
