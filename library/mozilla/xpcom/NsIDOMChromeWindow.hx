package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMChromeWindow") extern class NsIDOMChromeWindow extends NsISupports
{
	/**
	 * The related nsIBrowserDOMWindow instance which provides access to yet another layer of utility functions by chrome script. It will be null for DOMWindows not corresponding to browsers.
	 */
	var browserDOMWindow : NsIBrowserDOMWindow;
	/**
	 * Read only.
	 */
	var messageManager : NsIChromeFrameMessageManager;
	/**
	 * Obsolete since Gecko 1.9.1
	 */
	var title : DOMString;
	/**
	 * Returns current window state, the value is one of STATE_* constants. Read only.
	 */
	var windowState : UShort;
}
