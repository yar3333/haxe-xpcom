package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMWindow") extern class NsIDOMWindow extends NsISupports
{
	/**
	 * Get the application cache object for this window. Read only. Note: Prior to Gecko 7.0 this attribute was part of nsIDOMWindow2.
	 */
	var applicationCache : NsIDOMOfflineResourceList;
	/**
	 * The document contained in the window. Read only.
	 */
	var document : NsIDOMDocument;
	/**
	 * The child windows for this window. Read only. Native code only!
	 */
	var frames : NsIDOMWindowCollection;
	/**
	 * Global storage, accessible by domain. Read only. Note: Prior to Gecko 8.0 this attribute was part of nsIDOMStorageWindow.
	 */
	var globalStorage : NsIDOMStorageList;
	/**
	 * Local storage for the current browsing context. Data stored in local storage may only be accessed from the same origin that inserted the data into storage in the first place. Read only.  Note: Prior to Gecko 8.0 this attribute was part of nsIDOMStorageWindow.
	 */
	var localStorage : NsIDOMStorage;
	/**
	 * Get or set the name of this window. This attribute is "replaceable" in JavaScript.
	 */
	var name : DOMString;
	/**
	 * The window's parent window. If there is no parent window, or if the parent is of a different type, this is the current window. The window hierarchy does not cross chrome-content boundaries. Read only.
	 */
	var parent : NsIDOMWindow;
	/**
	 * The current horizontal (x) scroll position, in pixels. This attribute is "replaceable" in JavaScript. Read only.
	 */
	var scrollX : Long;
	/**
	 * The current vertical (y) scroll position, in pixels. This attribute is "replaceable" in JavaScript. Read only.
	 */
	var scrollY : Long;
	/**
	 * The object that controls whether or not scrollbars are shown in the window. This attribute is "replaceable" in JavaScript. Read only.
	 */
	var scrollbars : NsIDOMBarProp;
	/**
	 * Session storage for the current browsing context. Data stored in session storage may be accessed by any site in the browsing context. Read only.Note: Prior to Gecko 8.0 this attribute was part of nsIDOMStorageWindow.
	 */
	var sessionStorage : NsIDOMStorage;
	/**
	 * Get or set the document scale factor as a multiplier of the default size. When setting this attribute, an NS_ERROR_NOT_IMPLEMENTED error may be returned by implementations not supporting zoom. This attribute should always return 1.0 for implementations not supporting text zoom. 1.0 represents normal (unzoomed) size. Native code only!
	 */
	var textZoom : Float;
	/**
	 * The root window for the hierarchy of windows that contain this nsIDOMWindow. This is the window itself if there is no parent, or if the parent is of a different type. The window hierarchy does not cross chrome-content boundaries. This attribute is "replaceable" in JavaScript. Read only.
	 */
	var top : NsIDOMWindow;
	/**
	 * The window root for this window. This is useful for connecting event listeners to this window as well as every other window nested in that window root. Read only. Native code only! Note: Prior to Gecko 7.0 this attribute was part of nsIDOMWindow2.
	 */
	var windowRoot : NsIDOMEventTarget;
}
