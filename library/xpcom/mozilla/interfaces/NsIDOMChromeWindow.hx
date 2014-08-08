package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMChromeWindow") extern class NsIDOMChromeWindow extends NsISupports
{
	/**
	 * The window is maximized.
	 */
	static inline var STATE_MAXIMIZED = 1;
	/**
	 * The window is minimized.
	 */
	static inline var STATE_MINIMIZED = 2;
	/**
	 * The window is normal.
	 */
	static inline var STATE_NORMAL = 3;
	/**
	 * The window is in full screen mode. 
	 */
	static inline var STATE_FULLSCREEN = 4;
	
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
	
	function beginWindowMove(mouseDownEvent:NsIDOMEvent) : Void;
	function getAttention() : Void;
	function getAttentionWithCycleCount(aCycleCount:Long) : Void;
	function maximize() : Void;
	function minimize() : Void;
	function notifyDefaultButtonLoaded(defaultButton:NsIDOMElement) : Void;
	function restore() : Void;
	function setCursor(cursor:DOMString) : Void;
}
