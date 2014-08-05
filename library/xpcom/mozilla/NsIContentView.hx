package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentView") extern class NsIContentView extends NsISupports
{
	/**
	 * Read only.
	 */
	var contentHeight : Float;
	/**
	 * Dimensions of scrolled content in chrome-document CSS pixels. Read only.
	 */
	var contentWidth : Float;
	/**
	 * ID that can be used in conjunction with nsIDOMWindowUtils to change the actual document, instead of just how it is transformed; this is a 64-bit unsigned integer. Read only.
	 */
	var id : NsContentViewId;
	/**
	 * Horizontal scroll offset in chrome-document CSS pixels. When this view is active (that is it is being painted because it's in the visible region of the screen), this value is at first lined up with the content's scroll offset. Note: When this view becomes inactive, the new content view will have scroll values that are reset to the default. Read only.
	 */
	var scrollX : Float;
	/**
	 * Horizontal scroll offset in chrome-document CSS pixels. Read only.
	 */
	var scrollY : Float;
	/**
	 * Height of the viewport in chrome-document CSS pixels. Read only.
	 */
	var viewportHeight : Float;
	/**
	 * Width of the viewport in chrome-document CSS pixels. Read only.
	 */
	var viewportWidth : Float;
	
	function scrollBy(dxPx:Float, dyPx:Float) : Void;
	function scrollTo(xPx:Float, yPx:Float) : Void;
	function setScale(xScale:Float, yScale:Float) : Void;
}
