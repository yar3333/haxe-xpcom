package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMWindowUtils") extern class NsIDOMWindowUtils extends NsISupports
{
	/**
	 * getModifierState("Alt") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_ALT = 0x0001;
	/**
	 * getModifierState("Control") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_CONTROL = 0x0002;
	/**
	 * getModifierState("Shift") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_SHIFT = 0x0004;
	/**
	 * getModifierState("Meta") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_META = 0x0008;
	/**
	 * getModifierState("AltGraph") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_ALTGRAPH = 0x0010;
	/**
	 * getModifierState("CapsLock") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_CAPSLOCK = 0x0020;
	/**
	 * getModifierState("Fn") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_FN = 0x0040;
	/**
	 * getModifierState("NumLock") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_NUMLOCK = 0x0080;
	/**
	 * getModifierState("Scroll") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_SCROLL = 0x0100;
	/**
	 * getModifierState("SymbolLock") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_SYMBOLLOCK = 0x0200;
	/**
	 * getModifierState("Win") of the send event will return true if this is specified for aModifiers of send*Event() except sendNative*Event(). 
	 */
	static inline var MODIFIER_WIN = 0x0400;
	/**
	 * getDefaultPrevented() returns true if this is specified to aAdditionalFlags of sendKeyEvent(). 
	 */
	static inline var KEY_FLAG_PREVENT_DEFAULT = 0x0001;
	/**
	 * location attrubute of the sending key event by sendKeyEvent() returns KeyboardEvent.DOM_KEY_LOCATION_STANDARD if this is specified to the aAdditionalFlags.
	 */
	static inline var KEY_FLAG_LOCATION_STANDARD = 0x0010;
	/**
	 * location attrubute of the sending key event by sendKeyEvent() returns KeyboardEvent.DOM_KEY_LOCATION_LEFT if this is specified to the aAdditionalFlags.
	 */
	static inline var KEY_FLAG_LOCATION_LEFT = 0x0020;
	/**
	 * location attrubute of the sending key event by sendKeyEvent() returns KeyboardEvent.DOM_KEY_LOCATION_RIGHT if this is specified to the aAdditionalFlags.
	 */
	static inline var KEY_FLAG_LOCATION_RIGHT = 0x0040;
	/**
	 * location attrubute of the sending key event by sendKeyEvent() returns KeyboardEvent.DOM_KEY_LOCATION_NUMPAD if this is specified to the aAdditionalFlags.
	 */
	static inline var KEY_FLAG_LOCATION_NUMPAD = 0x0080;
	/**
	 * location attrubute of the sending key event by sendKeyEvent() returns KeyboardEvent.DOM_KEY_LOCATION_MOBILE if this is specified to the aAdditionalFlags.
	 */
	static inline var KEY_FLAG_LOCATION_MOBILE = 0x0100;
	/**
	 * location attrubute of the sending key event by sendKeyEvent() returns KeyboardEvent.DOM_KEY_LOCATION_JOYSTICK if this is specified to the aAdditionalFlags.
	 */
	static inline var KEY_FLAG_LOCATION_JOYSTICK = 0x0200;
	/**
	 * Used for aOptions of sendWheelEvent(). If this is set, the synthesized wheel event emulates wheel events come from some devices without the line scroll amount by the event. It means that the aLineOrPageDeltaX and aLineOrPageDeltaY don't have proper values. 
	 */
	static inline var WHEEL_EVENT_CAUSED_BY_PIXEL_ONLEY_DEVICE = 0x0001;
	/**
	 * Used for aOptions of sendWheelEvent(). If this is set, the synthesized wheel event emulates momentum scroll event. 
	 */
	static inline var WHEEL_EVENT_CAUSED_BY_MOMENTUM = 0x0002;
	/**
	 * Used for aOptions of sendWheelEvent(). If this is set, the synthesized wheel event emulates an event whose delta values are computed from user prefs in widget level. 
	 */
	static inline var WHEEL_EVENT_CUSTOMIZED_BY_USER_PREFS = 0x0004;
	/**
	 * Users cannot use IME at all. This state is not the same as ime-mode: disabled. 
	 */
	static inline var IME_STATUS_DISABLED = 0;
	/**
	 * Users can use all functions of IME. This state is same as ime-mode: normal. 
	 */
	static inline var IME_STATUS_ENABLED = 1;
	/**
	 * Users cannot use most IME functions. On GTK2, users can use "Simple IME" which only supports dead key inputting. This state is the same as ime-mode: password. 
	 */
	static inline var IME_STATUS_PASSWORD = 2;
	/**
	 * Plug-in has focus. At this time we should not attempt to set the IME state. 
	 */
	static inline var IME_STATUS_PLUGIN = 3;
	/**
	 * 
	 *     <p>Synthesize a text event to the window.</p>
	 *     <p>Cannot be accessed from unprivileged context (not content-accessible) Will throw a DOM security error if called without UniversalXPConnect privileges.</p>
	 *     Currently, this method doesn't support 4 or more clauses composition string. 
	 */
	static inline var COMPOSITION_ATTR_RAWINPUT = 0x02;
	static inline var COMPOSITION_ATTR_SELECTEDRAWTEXT = 0x03;
	static inline var COMPOSITION_ATTR_CONVERTEDTEXT = 0x04;
	static inline var COMPOSITION_ATTR_SELECTEDCONVERTEDTEXT = 0x05;
	/**
	 * One of values of aAdditionalFlags of sendQueryContentEvent(). This flag must not be set with QUERY_CONTENT_FLAG_USE_XP_LINE_BREAK. When this is set (or not set QUERY_CONTENT_FLAG_USE_XP_LINE_BREAK), the aOffset and aLength are offset and length in/of the content generated with native line breaks (E.g., "\r\n" on Windows). Additionally, the offset, length and string of result are also computed with native line breaks. <span class="badge geckoVersionBadge" title="(Firefox 31.0 / Thunderbird 31.0 / SeaMonkey 2.28)"><span class="badgeText">Requires Gecko 31.0</span></span>
	 */
	static inline var QUERY_CONTENT_FLAG_USE_NATIVE_LINE_BREAK = 0x0000;
	/**
	 * One of values of aAdditionalFlags of sendQueryContentEvent(). This flag must not be set with QUERY_CONTENT_FLAG_USE_NATIVE_LINE_BREAK. When this is set, the aOffset and aLength are offset and length in/of the content generated with XP line breaks (I.e., "\n" on all platforms). Additionally, the offset, length and string of result are also computed with XP line breaks. This is more useful for Javascript in chrome. <span class="badge geckoVersionBadge" title="(Firefox 31.0 / Thunderbird 31.0 / SeaMonkey 2.28)"><span class="badgeText">Requires Gecko 31.0</span></span>
	 */
	static inline var QUERY_CONTENT_FLAG_USE_XP_LINE_BREAK = 0x0001;
	/**
	 * QUERY_SELECTED_TEXT queries the first selection range's information. 
	 */
	static inline var QUERY_SELECTED_TEXT = 3200;
	/**
	 * QUERY_TEXT_CONTENT queries the text at the specified range. 
	 */
	static inline var QUERY_TEXT_CONTENT = 3201;
	/**
	 * QUERY_CARET_RECT queries the (collapsed) caret rect of the offset. If the actual caret is there at the specified offset, this returns the actual caret rect. Otherwise, this guesses the caret rect from the metrics of the text. 
	 */
	static inline var QUERY_CARET_RECT = 3203;
	/**
	 * QUERY_TEXT_RECT queries the specified text's rect. 
	 */
	static inline var QUERY_TEXT_RECT = 3204;
	/**
	 * QUERY_TEXT_RECT queries the focused editor's rect. 
	 */
	static inline var QUERY_EDITOR_RECT = 3205;
	/**
	 * 
	 *     <p>QUERY_CHARACTER_AT_POINT queries the character information at the specified point. The point is offset in the window.</p>
	 *     <div class="note"><strong>Note:</strong> If there are some panels at the point, this method send the query event to the panel's widget automatically.</div> 
	 */
	static inline var QUERY_CHARACTER_AT_POINT = 3208;
	/**
	 * One of values of aAdditionalFlags of sendSelectionSetEvent(). This flag must not be set with SELECTION_SET_FLAG_USE_XP_LINE_BREAK. When this is set (or not set SELECTION_SET_FLAG_USE_XP_LINE_BREAK), the aOffset and aLength are offset and length in/of the content generated with native line breaks (E.g., "\r\n" on Windows) <span class="badge geckoVersionBadge" title="(Firefox 31.0 / Thunderbird 31.0 / SeaMonkey 2.28)"><span class="badgeText">Requires Gecko 31.0</span></span>
	 */
	static inline var SELECTION_SET_FLAG_USE_NATIVE_LINE_BREAK = 0x0000;
	/**
	 * One of values of aAdditionalFlags of sendSelectionSetEvent(). This flag must not be set with SELECTION_SET_FLAG_USE_NATIVE_LINE_BREAK. When this is set, the aOffset and aLength are offset and length in/of the content generated with XP line breaks (I.e., "\n" on all platforms). This is more useful for Javascript in chrome <span class="badge geckoVersionBadge" title="(Firefox 31.0 / Thunderbird 31.0 / SeaMonkey 2.28)"><span class="badgeText">Requires Gecko 31.0</span></span>
	 */
	static inline var SELECTION_SET_FLAG_USE_XP_LINE_BREAK = 0x0001;
	/**
	 * One of values of aAdditionalFlags of sendSelectionSetEvent(). If this is set, the selection is set from aOffset + aLength to aOffset.<span class="badge geckoVersionBadge" title="(Firefox 31.0 / Thunderbird 31.0 / SeaMonkey 2.28)"><span class="badgeText">Requires Gecko 31.0</span></span>
	 */
	static inline var SELECTION_SET_FLAG_REVERSE = 0x0002;
	
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
