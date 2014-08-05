package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXULWindow") extern class NsIXULWindow extends NsISupports
{
	/**
	 *  
	 */
	static inline var lowestZ = 0;
	/**
	 * The Z level of an independent window opened with the "alwaysLowered" chrome flag.
	 */
	static inline var loweredZ = 4;
	/**
	 * The default Z level of an independent window.
	 */
	static inline var normalZ = 5;
	/**
	 * The Z level of an independent window opened with the "alwaysRaised" chrome flag.
	 */
	static inline var raisedZ = 6;
	/**
	 *  
	 */
	static inline var highestZ = 9;
	
	/**
	 * chromeFlags are from nsIWebBrowserChrome.
	 */
	var chromeFlags : PRUint32;
	/**
	 * contextFlags are from nsIWindowCreator2.
	 */
	var contextFlags : PRUint32;
	/**
	 * The docshell owning the XUL for this window. Read only.
	 */
	var docShell : NsIDocShell;
	/**
	 * Indicates if this window is instrinsically sized.
	 */
	var intrinsicallySized : Bool;
	/**
	 * The primary content shell. Note: That this is a docshell tree item and therefore can not be assured of what object it is. It could be an editor, a docshell, or a browser object. Or down the road any other object that supports being a DocShellTreeItem Query accordingly to determine the capabilities. Read only.
	 */
	var primaryContentShell : NsIDocShellTreeItem;
	/**
	 * Provides access to the XULBrowserWindow object offering a way for the browser to update the user interface of the enclosing XUL window.
	 */
	var XULBrowserWindow : NsIXULBrowserWindow;
	/**
	 * One of the Z level constants below. On some platforms, windows with a higher zLevel will be kept above windows with a lower zLevel.
	 */
	var zLevel : ULong;
	
	function addChildWindow(aChild:NsIXULWindow) : Void;
	function applyChromeFlags() : Void;
	function assumeChromeFlagsAreFrozen() : Void;
	function center(aRelative:NsIXULWindow, aScreen:Bool, aAlert:Bool) : Void;
	function createNewWindow(aChromeFlags:PRInt32, aAppShell:NsIAppShell) : NsIXULWindow;
	function getContentShellById(ID:Wstring) : NsIDocShellTreeItem;
	function removeChildWindow(aChild:NsIXULWindow) : Void;
	function showModal() : Void;
}
