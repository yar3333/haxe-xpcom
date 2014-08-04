package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMWindowInternal") extern class NsIDOMWindowInternal extends NsIDOMWindow
{
	/**
	 * Readonly:  The window object itself.
	 */
	var window : NsIDOMWindowInternal;
	/**
	 * Readonly:  Returns an object reference to the window object.
	 */
	var self : NsIDOMWindowInternal;
	/**
	 * Readonly:  Returns a reference to the navigator object.
	 */
	var navigator : NsIDOMNavigator;
	/**
	 * Readonly:  Returns a reference to the screen object associated with the window.
	 */
	var screen : NsIDOMScreen;
	/**
	 * Readonly:  Returns a reference to the History object, which provides an interface for manipulating the browser session history.
	 */
	var history : NsIDOMHistory;
	/**
	 * Readonly:  Returns a Window object for the primary content window.
	 */
	var content : NsIDOMWindow;
	/**
	 * Readonly:
	 */
	var prompter : NsIPrompt;
	/**
	 * Readonly:  Returns the menubar object, whose visibility can be toggled in the window.
	 */
	var menubar : NsIDOMBarProp;
	/**
	 * Readonly:  Returns the toolbar object, whose visibility can be toggled in the window.
	 */
	var toolbar : NsIDOMBarProp;
	/**
	 * Readonly:  Returns the locationbar object, whose visibility can be toggled in the window.
	 */
	var locationbar : NsIDOMBarProp;
	/**
	 * Readonly:  Returns the personalbar object, whose visibility can be toggled in the window.
	 */
	var personalbar : NsIDOMBarProp;
	/**
	 * Readonly:  Returns the statusbar object, whose visibility can be toggled in the window.
	 */
	var statusbar : NsIDOMBarProp;
	/**
	 * Readonly:  Returns the window directories toolbar object.
	 */
	var directories : NsIDOMBarProp;
	/**
	 * Readonly:  This property indicates whether the referenced window is closed or not.
	 */
	var closed : Bool;
	/**
	 * Readonly:  Returns the browser crypto object, which can then be used to manipulate various browser security features.
	 */
	var crypto : NsIDOMCrypto;
	/**
	 * Obsolete: this property is not supported in newer versions of Firefox.
	 */
	var pkcs11 : NsIDOMPkcs11;
	/**
	 * Readonly:  Returns the XUL controllers of the chrome window.
	 */
	var controllers : NsIControllers;
	/**
	 * Returns a reference to the window that opened this current window.
	 */
	var opener : NsIDOMWindowInternal;
	/**
	 * Sets the text in the status bar at the bottom of the browser or returns the previously set text.
	 */
	var status : DOMString;
	/**
	 * Gets/sets the status bar text for the given window.
	 */
	var defaultStatus : DOMString;
	/**
	 * Readonly:  Returns a nsIDOMLocation object, which contains information about the URL of the document.
	 */
	var location : NsIDOMLocation;
	/**
	 * Width of the browser window.
	 */
	var innerWidth : Long;
	/**
	 * Height of the browser window.
	 */
	var innerHeight : Long;
	/**
	 * Gets the width of the outside of the browser window.
	 */
	var outerWidth : Long;
	/**
	 * Gets the height of the outside of the browser window.
	 */
	var outerHeight : Long;
	/**
	 * The horizontal distance of the left border of the user's browser from the left side of the screen.
	 */
	var screenX : Long;
	/**
	 * The vertical distance of the top border of the user's browser from the top edge of the screen.
	 */
	var screenY : Long;
	/**
	 * Returns the number of pixels that the document has already been scrolled horizontally.
	 */
	var pageXOffset : Long;
	/**
	 * Returns the number of pixels that the document has already been scrolled vertically.
	 */
	var pageYOffset : Long;
	/**
	 * Returns the maximum number of pixels that the document can be scrolled horizontally.
	 */
	var scrollMaxX : Long;
	/**
	 * Returns the maximum number of pixels that the document can be scrolled vertically.
	 */
	var scrollMaxY : Long;
	/**
	 * Readonly:  Returns the number of frames in the window.
	 */
	var length : ULong;
	/**
	 * Whether the window is displayed in full screen mode or not
	 */
	var fullScreen : Bool;
	/**
	 * Readonly:  The element in which the window is embedded, or null if the window is top-level.
	 */
	var frameElement : NsIDOMElement;
	/**
	 * Readonly:  A DOM URL object, which provides the window.URL.createObjectURL() and window.URL.revokeObjectURL() methods. 
	 * Note: Prior to Gecko 7.0 (Firefox 7.0 / Thunderbird 7.0 / SeaMonkey 2.4), this attribute was part of nsIDOMWindow_2_0_BRANCH.
	 */
	var URL : NsIDOMMozURLProperty;
}
