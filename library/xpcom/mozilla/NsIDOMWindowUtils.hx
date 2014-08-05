package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMWindowUtils") extern class NsIDOMWindowUtils extends NsISupports
{
	/**
	 * The ID of the window's current inner window. Read only. 
	 * Exceptions thrown
	 * 
	 * NS_ERROR_NOT_AVAILABLE
	 * There is no current inner window
	 */
	var currentInnerWindowID : ULongLong;
	/**
	 * The DPI of the display. Read only.
	 */
	var displayDPI : Float;
	/**
	 * Whether the charset of the window's current document has been forced by the user. Cannot be accessed from unprivileged context (not content-accessible) Read only.
	 */
	var docCharsetIsForced : Bool;
	/**
	 * The type of the currently-focused HTML  element is used to create interactive controls for web-based forms."> element, if one is focused.  Mobile Only in Gecko 2.0
	 */
	var focusedInputType : String;
	/**
	 * Returns the image animation mode of the window. The attribute's value must be one of the animationMode values from imgIContainer.
	 */
	var imageAnimationMode : UShort;
	/**
	 * Returns the IME open state. True if it's open, otherwise false. This attribute only works when IMEStatus is IME_STATUS_ENABLED. Read only.
	 */
	var IMEIsOpen : Bool;
	/**
	 * Returns the current IME status. Values correspond to the IME_STATUS_* constants defined below. Read only.
	 */
	var IMEStatus : ULong;
	/**
	 * Returns true if a MozAfterPaint event has been queued but not yet fired. Read only.
	 */
	var isMozAfterPaintPending : Bool;
	/**
	 * What type of layer manager the widget associated with this window is using. "Basic" is unaccelerated; other types are accelerated. Throws an error if there is no widget associated with this window. Read only.
	 */
	var layerManagerType : AString;
	/**
	 * The ID of the window's outer window. Read only.
	 */
	var outerWindowID : ULongLong;
	/**
	 * true if painting is currently suppressed for this window; otherwise false. Read only. 
	 * This is used on mobile, for example, to prevent attempts to render content until enough of the page has been loaded to avoid content bouncing around excessively as more content is loaded.
	 */
	var paintingSuppressed : Bool;
	/**
	 * Returns the number of screen pixels per CSS pixel. Read only.
	 */
	var screenPixelsPerCSSPixel : Float;
	/**
	 * With this it's possible to mute all the MediaElements in this window. We have audioMuted and audioVolume to preserve the volume across mute/umute.
	 */
	var audioMuted : Bool;
	/**
	 * Range: greater or equal to 0. The real volume level is affected by the volume of all ancestor windows.
	 */
	var audioVolume : Float;
}
