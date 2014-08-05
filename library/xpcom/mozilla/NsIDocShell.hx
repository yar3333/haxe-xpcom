package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDocShell") extern class NsIDocShell extends NsISupports
{
	/**
	 * Certain dochshells (like the message pane) should not throw up auth dialogs because it can act as a password trojan.
	 */
	var allowAuth : Bool;
	/**
	 * Attribute that determines whether DNS prefetch is allowed for this subtree of the docshell tree. Defaults to true. Setting this will make it take effect starting with the next document loaded in the docshell.
	 */
	var allowDNSPrefetch : Bool;
	/**
	 * Attribute stating whether or not images should be loaded.
	 */
	var allowImages : Bool;
	/**
	 * Whether to allow Javascript execution.
	 */
	var allowJavascript : Bool;
	/**
	 * Attribute stating if refresh based redirects can be allowed.
	 */
	var allowMetaRedirects : Bool;
	/**
	 * Whether to allow plugin execution.
	 */
	var allowPlugins : Bool;
	/**
	 * Attribute stating if it should allow subframes (framesets/iframes) or not.
	 */
	var allowSubframes : Bool;
	/**
	 * Specifies whether or not content is allowed to control the window (that is, to resize or move the window). Default is true, which lets content control the window.
	 */
	var allowWindowControl : Bool;
	/**
	 * The type of application that created this window. Types are defined in Constants.
	 */
	var appType : ULong;
	/**
	 * Current busy state for DocShell. Valid states are defined in Constants. Read only.
	 */
	var busyFlags : ULong;
	/**
	 * Whether this docshell can execute scripts based on its hierarchy. The rule of thumb here is that we disable js if this docshell or any of its parents disallow scripting, unless the only reason for js being disabled in this docshell is a parent docshell having a document that is in design mode. In that case, we explicitly allow scripting on the current docshell. Read only.
	 */
	var canExecuteScripts : Bool;
	/**
	 * Tells the docshell whether the canvas should have focus. Called by the focus manager when the user tabs to the frame rather than an element. Obsolete since Gecko 1.9.2
	 */
	var canvasHasFocus : Bool;
	/**
	 * Find out if the currently loaded document came from a suspicious channel (such as a JAR channel where the server-returned content type is not a known JAR type). Read only.
	 */
	var channelIsUnsafe : Bool;
	/**
	 * The converter to use when reading the document's data.
	 * In Mozilla code, all text is encoded as Unicode. When reading a document, a converter is used to translate the text from its original format into Unicode. This attribute lets you:
	 * See what converter was used when retrieving the document's data.
	 * Override that character set for documents for which the specified fallback or auto-detected character set is incorrect.
	 * Reading this value reports the encoding that was used when loading the data into the document. Setting this attribute overrides the encoding; however, to update the DOM or display of the content, you need have the data reparsed.
	 * Overriding the character set also sets the fallback encoding for the container frame.
	 * Note: Prior to Gecko 12.0, this attribute was part of a separate nsIDocCharset interface.
	 */
	var charset : String;
	/**
	 * Events generated in the frame bubble up to its chromeEventHandler. In the case of a content frame or subframe this is the containing chrome frame. In the case of a chrome frame this is the same as the frame element. This attribute allows chrome to tie in to handle DOM events that may be of interest to chrome.
	 */
	var chromeEventHandler : NsIDOMEventTarget;
	/**
	 * Content Viewer that is currently loaded for this DocShell. This may change as the underlying content changes. Read only.
	 */
	var contentViewer : NsIContentViewer;
	/**
	 * Gets the channel for the currently loaded document, if any. For a new document load, this will be the channel of the previous document until after OnLocationChange fires. Read only.
	 */
	var currentDocumentChannel : NsIChannel;
	/**
	 * The document character set info. This is used by a load to determine priorities for charset detection and so on. Obsolete since Gecko 12.0
	 * Note: The properties of the old nsIDocumentCharsetInfo interface were merged into nsIDocShell in Gecko 12.0.
	 */
	var documentCharsetInfo : NsIDocumentCharsetInfo;
	/**
	 * Presentation shell for the oldest document, if this docshell is currently transitioning between documents. Read only. Native code only!
	 */
	var eldestPresShell : NsIPresShell;
	/**
	 * A character set to override the page's default character set while processing; this is tried before using any other character set during page loads. 
	 * Note: Prior to Gecko 12.0, this attribute was part of a separate nsIDocCharsetInfo interface.
	 */
	var forcedCharset : NsIAtom;
	/**
	 * Tells the DocShell that it now has focus or has lost focus. Obsolete since Gecko 1.9.2
	 */
	var hasFocus : Bool;
	/**
	 * The ID of the docshell in the session history. Read only.
	 */
	var historyID : ULongLong;
	/**
	 * Indicates whether or not the DocShell is currently active. An active DocShell is one that is currently visible, which means it's not a good candidate for optimizations such as image frame discarding. DocShells are active if this is true, which is the default state. 
	 * Note: Starting in Gecko 8.0, isActive is false for documents in minimized windows.
	 */
	var isActive : Bool;
	/**
	 * Sets whether a docshell is an app tab. An app tab docshell may behave differently than a non-app tab docshell in some cases, such as when handling link clicks. Docshells are not app tabs unless told otherwise.
	 */
	var isAppTab : Bool;
	/**
	 * Returns true if the docshell is currently executing the onLoad Handler. Read only.
	 */
	var isExecutingOnLoadHandler : Bool;
	/**
	 * Find out whether the docshell is currently in the middle of a page transition (after the onunload event has fired, but before the new document has been set up) Read only.
	 */
	var isInUnload : Bool;
	/**
	 * If true, this docshell is not visible in the traditional sense, but is being actively rendered to the screen (such as by being painted to a canvas), and should be treated accordingly.
	 */
	var isOffScreenBrowser : Bool;
	var layoutHistoryState : NsILayoutHistoryState;
	/**
	 * Keeps track of the previous SHTransaction index and the current SHTransaction index at the time that the doc shell begins to load. Used for ContentViewer eviction. Read only.
	 */
	var loadedTransIndex : Long;
	/**
	 * Load type for the document. Valid states are defined in Constants. Note that nsIDocShell may use other states internally so you should check for the specific state bit.
	 */
	var loadType : ULong;
	/**
	 * The value of the marginheight attribute on the frame element, or negative if it was not set.
	 */
	var marginHeight : Long;
	/**
	 * The value of the marginwidth attribute on the frame element, or negative if it was not set.
	 */
	var marginWidth : Long;
	/**
	 * Indicates the DocShell's parent document's character set.
	 * Note: Prior to Gecko 12.0, this attribute was part of a separate nsIDocCharsetInfo interface.
	 */
	var parentCharset : NsIAtom;
	/**
	 * Indicates the source from which the character set being used was obtained. Higher numbers override lower ones. See Character set source constants for defined values. 
	 * Note: Prior to Gecko 12.0, this attribute was part of a separate nsIDocCharsetInfo interface.
	 */
	var parentCharsetSource : PRInt32;
	/**
	 * URI content listener parent. This is not refcounted and is assumed to be nulled out by the parent when the parent is going away. Obsolete since Gecko 1.8
	 */
	var parentURIContentListener : NsIURIContentListener;
	/**
	 * Presentation context for the currently loaded document. This may be null. Read only. Native code only!
	 */
	var presContext : NsPresContext;
	/**
	 * Presentation shell for the currently loaded document. This may be null. Read only. Native code only!
	 */
	var presShell : NsIPresShell;
	/**
	 * Keeps track of the previous SHTransaction index and the current SHTransaction index at the time that the doc shell begins to load. Used for ContentViewer eviction. Read only.
	 */
	var previousTransIndex : Long;
	/**
	 * If the current content viewer is not initialized for print preview, it is replaced with one which is and to which an about:blank document is loaded. Read only.
	 */
	var printPreview : NsIWebBrowserPrint;
	/**
	 * Track whether we're currently restoring a document presentation. Read only.
	 */
	var restoringDocument : Bool;
	/**
	 * The SecureBrowserUI object for this docshell. This is set by browser or nsWebBrowser for their root docshell.
	 */
	var securityUI : NsISecureBrowserUI;
	/**
	 * Indicates whether the current page can be cached. Read only.
	 */
	var shouldSaveLayoutState : Bool;
	/**
	 * Attribute to access whether error pages are enabled.
	 */
	var useErrorPages : Bool;
	/**
	 * Set/Get the document scale factor. When setting this attribute, a NS_ERROR_NOT_IMPLEMENTED error may be returned by implementations not supporting zoom. Implementations not supporting zoom should return 1.0 all the time for the Get operation. 1.0 by the way is the default of zoom. This means 100% of normal scaling or in other words normal size no zoom.
	 */
	var zoom : Float;
}
