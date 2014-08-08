package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFocusManager") extern class NsIFocusManager extends NsISupports
{
	public static inline function getService() : NsIFocusManager
	{
		return xpcom.Components.classes[cast "@mozilla.org/focus-manager;1"].getService(NsIFocusManager);
	}
	
	/**
	 *  
	 */
	static inline var FLAG_RAISE = 1;
	/**
	 * Do not scroll the element to focus into view.
	 */
	static inline var FLAG_NOSCROLL = 2;
	/**
	 * If attempting to change focus in a window that is not focused, do not switch focus to that window. Instead, just update the focus within that window and leave the application focus as is. This flag will have no effect if a child window is focused and an attempt is made to adjust the focus in an ancestor, as the frame must be switched in this case.
	 */
	static inline var FLAG_NOSWITCHFRAME = 4;
	/**
	 * Focus is changing due to a mouse operation, for instance the mouse was clicked on an element.
	 */
	static inline var FLAG_BYMOUSE = 0x1000;
	/**
	 * Focus is changing due to a key operation, for instance pressing the tab key. This flag would normally be passed when MOVEFOCUS_FORWARD or MOVEFOCUS_BACKWARD is used.
	 */
	static inline var FLAG_BYKEY = 0x2000;
	/**
	 * Focus is changing due to a call to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIFocusManager#MoveFocus()">MoveFocus()</a></code>. This flag will be implied when <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIFocusManager#MoveFocus()">MoveFocus()</a></code> is called except when one of the other mechanisms (mouse or key) is specified, or when the type is MOVEFOCUS_ROOT or MOVEFOCUS_CARET.
	 */
	static inline var FLAG_BYMOVEFOCUS = 0x4000;
	/**
	 * Always show the focus ring or other indicator of focus, regardless of other state. 
	 */
	static inline var FLAG_SHOWRING = 0x100000;
	/**
	 * Move focus forward one element, used when pressing TAB.
	 */
	static inline var MOVEFOCUS_FORWARD = 1;
	/**
	 * Move focus backward one element, used when pressing Shift+TAB.
	 */
	static inline var MOVEFOCUS_BACKWARD = 2;
	/**
	 * Move focus forward to the next frame document, used when pressing F6.
	 */
	static inline var MOVEFOCUS_FORWARDDOC = 3;
	/**
	 * Move focus forward to the previous frame document, used when pressing Shift+F6.
	 */
	static inline var MOVEFOCUS_BACKWARDDOC = 4;
	/**
	 * Move focus to the first focusable element.
	 */
	static inline var MOVEFOCUS_FIRST = 5;
	/**
	 * Move focus to the last focusable element.
	 */
	static inline var MOVEFOCUS_LAST = 6;
	/**
	 * Move focus to the root element in the document.
	 */
	static inline var MOVEFOCUS_ROOT = 7;
	/**
	 * Move focus to a link at the position of the caret. This is a special value used to focus links as the caret moves over them in caret browsing mode.
	 */
	static inline var MOVEFOCUS_CARET = 8;
	
	/**
	 * The most active (frontmost) window, or null if no window that is part of the application is active. Setting the activeWindow raises it, and focuses the current child window's current element, if any. Setting this to null or to a non-top-level window throws an NS_ERROR_INVALID_ARG exception.
	 */
	var activeWindow : NsIDOMWindow;
	/**
	 * The element that is currently focused. This will always be an element within the document loaded in focusedWindow or null if no element in that document is focused. Read only.
	 */
	var focusedElement : NsIDOMElement;
	/**
	 * The child window within the activeWindow that is focused. This will always be activeWindow, a child window of activeWindow or null if no child window is focused. Setting the focusedWindow changes the focused window and raises the toplevel window it is in. If the current focus within the new focusedWindow is a frame element, then the focusedWindow will actually be set to the child window and the current element within that set as the focused element. This process repeats downwards until a non-frame element is found.
	 */
	var focusedWindow : NsIDOMWindow;
	
	function clearFocus(aWindow:NsIDOMWindow) : Void;
	function contentRemoved(aDocument:NsIDocument, aElement:NsIContent) : Void;
	function fireDelayedEvents(aDocument:NsIDocument) : Void;
	function focusPlugin(aPlugin:NsIContent) : Void;
	function getFocusedElementForWindow(aWindow:NsIDOMWindow, aDeep:PRBool, aFocusedWindow:NsIDOMWindow) : NsIDOMElement;
	function getLastFocusMethod(window:NsIDOMWindow) : PRUint32;
	function moveCaretToFocus(aWindow:NsIDOMWindow) : Void;
	function moveFocus(aWindow:NsIDOMWindow, aStartElement:NsIDOMElement, aType:ULong, aFlags:ULong) : NsIDOMElement;
	function setFocus(aElement:NsIDOMElement, aFlags:ULong) : Void;
	function windowHidden(aWindow:NsIDOMWindow) : Void;
	function windowLowered(aWindow:NsIDOMWindow) : Void;
	function windowRaised(aWindow:NsIDOMWindow) : Void;
	function windowShown(aWindow:NsIDOMWindow, aNeedsFocus:PRBool) : Void;
}
