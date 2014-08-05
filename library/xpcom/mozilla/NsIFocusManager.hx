package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFocusManager") extern class NsIFocusManager extends NsISupports
{
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
}
