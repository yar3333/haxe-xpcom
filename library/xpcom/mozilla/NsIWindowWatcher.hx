package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWindowWatcher") extern class NsIWindowWatcher extends NsISupports
{
	/**
	 * The Watcher serves as a global storage facility for the current active (front most non-floating-palette-type) window, storing and returning it on demand. Users must keep this attribute current, including after the topmost window is closed. This attribute will be null if the active window is not an nsIDOMWindow; for example, if the active window is an alert.
	 */
	var activeWindow : NsIDOMWindow;
	
	function getChromeForWindow(aWindow:NsIDOMWindow) : NsIWebBrowserChrome;
	function getNewAuthPrompter(aParent:NsIDOMWindow) : NsIAuthPrompt;
	function getNewPrompter(aParent:NsIDOMWindow) : NsIPrompt;
	function getWindowByName(aTargetName:Wstring, aCurrentWindow:NsIDOMWindow) : NsIDOMWindow;
	function getWindowEnumerator() : NsISimpleEnumerator;
	function openWindow(aParent:NsIDOMWindow, aUrl:String, aName:String, aFeatures:String, aArguments:NsISupports) : NsIDOMWindow;
	function registerNotification(aObserver:NsIObserver) : Void;
	function setWindowCreator(creator:NsIWindowCreator) : Void;
	function unregisterNotification(aObserver:NsIObserver) : Void;
}
