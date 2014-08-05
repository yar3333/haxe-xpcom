package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXULWindow") extern class NsIXULWindow extends NsISupports
{
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
}
