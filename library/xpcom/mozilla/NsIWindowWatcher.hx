package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWindowWatcher") extern class NsIWindowWatcher extends NsISupports
{
	/**
	 * The Watcher serves as a global storage facility for the current active (front most non-floating-palette-type) window, storing and returning it on demand. Users must keep this attribute current, including after the topmost window is closed. This attribute will be null if the active window is not an nsIDOMWindow; for example, if the active window is an alert.
	 */
	var activeWindow : NsIDOMWindow;
}
