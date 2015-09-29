package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * This is the interface to the Popup Window Manager: an object which
 * maintains popup window permissions by website.
 */
@:native("Components.interfaces.nsIPopupWindowManager")
extern class NsIPopupWindowManager extends NsISupports
{
	// "@mozilla.org/PopupWindowManager;1"

	/**
	 * These values are returned by the testPermission method
	 */
	static var ALLOW_POPUP : Int; // 1
	static var DENY_POPUP : Int; // 2
	static var ALLOW_POPUP_WITH_PREJUDICE : Int; // 3

	/**
	 * Test whether a website has permission to show a popup window.
	 * @param   principal is the principal to be tested
	 * @return  one of the enumerated permission actions defined above
	 */
	function testPermission(principal:NsIPrincipal) : Int;
}
