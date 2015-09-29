package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * Platform-independent interface to platform native menu objects.
 */
@:native("Components.interfaces.nsIStandaloneNativeMenu")
extern class NsIStandaloneNativeMenu extends NsISupports
{
	/**
	 * Initialize the native menu using given XUL DOM element.
	 *
	 * @param aDOMElement A XUL DOM element of tag type |menu| or |menupopup|.
	 */
	function init(aDOMElement:NsIDOMElement) : Void;

	/**
	 * This method must be called before the menu is opened and displayed to the
	 * user. It allows the platform code to update the menu and also determine
	 * whether the menu should even be shown.
	 *
	 * @return true if the menu can be shown, false if it should not be shown
	 */
	function menuWillOpen() : Bool;

	/**
	 * The native object representing the XUL menu that was passed to Init(). On
	 * Mac OS X, this will be a NSMenu pointer, which will be retained and
	 * autoreleased when the attribute is retrieved.
	 */
	//[noscript] var nativeMenu : voidPtr;

	/**
	 * Activate the native menu item specified by |anIndexString|. This method
	 * is intended to be used by the test suite.
	 *
	 * @param anIndexString string containing a list of indices separated by
	 *        pipe ('|') characters
	 */
	function activateNativeMenuItemAt(anIndexString:AString) : Void;

	/**
	 * Force an update of the native menu item specified by |anIndexString|. This
	 * method is intended to be used by the test suite.
	 *
	 * @param anIndexString string containing a list of indices separated by
	 *        pipe ('|') characters
	 */
	function forceUpdateNativeMenuAt(anIndexString:AString) : Void;
}