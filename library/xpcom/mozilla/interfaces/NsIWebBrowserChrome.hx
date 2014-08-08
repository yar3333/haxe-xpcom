package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebBrowserChrome") extern class NsIWebBrowserChrome extends NsISupports
{
	/**
	 * Flag for <code><a href="nsIWebBrowserChrome.html#SetStatus()">SetStatus()</a></code>
	 */
	static inline var STATUS_SCRIPT = 1;
	/**
	 * Flag for <code><a href="nsIWebBrowserChrome.html#SetStatus()">SetStatus()</a></code>
	 */
	static inline var STATUS_SCRIPT_DEFAULT = 2;
	/**
	 * Flag for <code><a href="nsIWebBrowserChrome.html#SetStatus()">SetStatus()</a></code>
	 */
	static inline var STATUS_LINK = 3;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_DEFAULT = 1;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_WINDOW_BORDERS = 2;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_WINDOW_CLOSE = 4;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_WINDOW_RESIZE = 8;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_MENUBAR = 16;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_TOOLBAR = 32;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_LOCATIONBAR = 64;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_STATUSBAR = 128;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_PERSONAL_TOOLBAR = 256;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_SCROLLBARS = 512;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_TITLEBAR = 1024;
	/**
	 * Value for the chromeFlags attribute.
	 */
	static inline var CHROME_EXTRA = 2048;
	/**
	 * Specifically for use with <code><a href="nsIWindowCreator.html" title="">nsIWindowCreator</a></code>.
	 */
	static inline var CHROME_WITH_SIZE = 4096;
	/**
	 * Specifically for use with <code><a href="nsIWindowCreator.html" title="">nsIWindowCreator</a></code>.
	 */
	static inline var CHROME_WITH_POSITION = 8192;
	/**
	 * Represent special cases.
	 */
	static inline var CHROME_WINDOW_MIN = 16384;
	/**
	 * Represent special cases.
	 */
	static inline var CHROME_WINDOW_POPUP = 32768;
	/**
	 * Represent special cases.
	 */
	static inline var CHROME_WINDOW_RAISED = 33554432;
	/**
	 * Represent special cases.
	 */
	static inline var CHROME_WINDOW_LOWERED = 67108864;
	/**
	 * Represent special cases.
	 */
	static inline var CHROME_CENTER_SCREEN = 134217728;
	/**
	 * Make the new window dependent on the parent. This flag is only meaningful if CHROME_OPENAS_CHROME is set; content windows should not be dependent.
	 */
	static inline var CHROME_DEPENDENT = 268435456;
	/**
	 * The modal style bit just affects the way the window looks and does not mean it's actually modal.
	 */
	static inline var CHROME_MODAL = 536870912;
	/**
	 * Represent special cases.
	 */
	static inline var CHROME_OPENAS_DIALOG = 1073741824;
	/**
	 * Represent special cases.
	 */
	static inline var CHROME_OPENAS_CHROME = 2147483648;
	/**
	 * Represent special cases.
	 */
	static inline var CHROME_ALL = 4094;
	/**
	 * Whether this window should use remote (out-of-process) tabs.
	 */
	static inline var CHROME_REMOTE_WINDOW = 1048576;
	
	/**
	 * The chrome flags for this browser chrome. The implementation should reflect the value of this attribute by hiding or showing its chrome appropriately.
	 */
	var chromeFlags : ULong;
	/**
	 * The currently loaded WebBrowser. The browser chrome may be told to set the WebBrowser object to a new object by setting this attribute. In this case the implementer is responsible for taking the new WebBrowser object and doing any necessary initialization or setup as if it had created the WebBrowser itself. This includes positioning setting up listeners etc.
	 */
	var webBrowser : NsIWebBrowser;
	
	function destroyBrowserWindow() : Void;
	function exitModalEventLoop(aStatus:Nsresult) : Void;
	function isWindowModal() : Bool;
	function setStatus(statusType:ULong, status:Wstring) : Void;
	function showAsModal() : Void;
	function sizeBrowserTo(aCX:Long, aCY:Long) : Void;
}
