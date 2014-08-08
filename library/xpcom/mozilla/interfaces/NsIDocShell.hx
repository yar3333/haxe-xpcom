package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDocShell") extern class NsIDocShell extends NsISupports
{
	public static inline function createInstance() : NsIDocShell return Components.Constructor("@mozilla.org/docshell;1", Components.interfaces.nsIDocShell);
	
	/**
	 * Used as a placeholder when you don't want to explicitly specify flags.
	 */
	static inline var INTERNAL_LOAD_FLAGS_NONE = 0x0;
	/**
	 * Used to indicate that it may be safe to inherit the owner of a javascript: or data: URL from the existing document.
	 */
	static inline var INTERNAL_LOAD_FLAGS_INHERIT_OWNER = 0x1;
	/**
	 * Used to indicate that the load was caused by a meta refresh and the current document URI shouldn't be sent as the HTTP referrer.
	 */
	static inline var INTERNAL_LOAD_FLAGS_DONT_SEND_REFERRER = 0x2;
	/**
	 *  Used to indicate that LOAD_FLAGS_ALLOW_THIRD_PARTY_FIXUP was passed as one of the flags to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIDocShell#loadURI()">loadURI()</a></code>.
	 */
	static inline var INTERNAL_LOAD_FLAGS_ALLOW_THIRD_PARTY_FIXUP = 0x4;
	/**
	 * This flag marks the first load in this object. See <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIWebNavigation" title="">nsIWebNavigation</a>.LOAD_FLAGS_FIRST_LOAD</code>. 
	 */
	static inline var INTERNAL_LOAD_FLAGS_FIRST_LOAD = 0x8;
	/**
	 *  Used to indicate that LOAD_FLAGS_BYPASS_CLASSIFIER was passed as one of the flags to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIDocShell#loadURI()">loadURI()</a></code>.
	 */
	static inline var INTERNAL_LOAD_FLAGS_BYPASS_CLASSIFIER = 0x10;
	/**
	 *  Used to indicate that LOAD_FLAGS_FORCE_ALLOW_COOKIES was passed as one of the flags to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIDocShell#loadURI()">loadURI()</a></code>.
	 */
	static inline var INTERNAL_LOAD_FLAGS_FORCE_ALLOW_COOKIES = 0x20;
	/**
	 * Used by <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIDocShell#getDocShellEnumerator()">getDocShellEnumerator()</a></code>to determine the direction of the enumeration.
	 */
	static inline var ENUMERATE_FORWARDS = 0;
	/**
	 * Used by <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIDocShell#getDocShellEnumerator()">getDocShellEnumerator()</a></code>to determine the direction of the enumeration.
	 */
	static inline var ENUMERATE_BACKWARDS = 1;
	/**
	 * This is the default value of the appType attribute.
	 */
	static inline var APP_TYPE_UNKNOWN = 0;
	/**
	 * This is the value of the appType attribute used by Thunderbird and SeaMonkey to indicate that email messages are displayed in this window.
	 */
	static inline var APP_TYPE_MAIL = 1;
	/**
	 * This is the value of the appType attribute used by Thunderbird and SeaMonkey to indicate that email messages or web pages are composed in this window.
	 */
	static inline var APP_TYPE_EDITOR = 2;
	/**
	 * Returned by the busyFlags attribute when the nsIDocShell is not loading a document.
	 */
	static inline var BUSY_FLAGS_NONE = 0;
	/**
	 * Returned by the busyFlags attribute when the nsIDocShell is loading a document from the network.
	 */
	static inline var BUSY_FLAGS_BUSY = 1;
	/**
	 * Returned by the busyFlags attribute when the nsIDocShell has started loading a document from the network, but no data has been received yet.
	 */
	static inline var BUSY_FLAGS_BEFORE_PAGE_LOAD = 2;
	/**
	 * Returned by the busyFlags attribute when the nsIDocShell is receiving data from the network.
	 */
	static inline var BUSY_FLAGS_PAGE_LOADING = 4;
	/**
	 * Returned by the loadType attribute for normal loads.
	 */
	static inline var LOAD_CMD_NORMAL = 0x1;
	/**
	 * Returned by the loadType attribute for reloads.
	 */
	static inline var LOAD_CMD_RELOAD = 0x2;
	/**
	 * Returned by the loadType attribute for history navigation.
	 */
	static inline var LOAD_CMD_HISTORY = 0x4;
	/**
	 * Returned by the loadType attribute when the page has used history.pushState() 
	 */
	static inline var LOAD_CMD_PUSHSTATE = 0x8;
	
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
	
	function addSessionStorage(principal:NsIPrincipal, storage:NsIDOMStorage) : Void;
	function addState(aData:NsIVariant, aTitle:DOMString, aURL:DOMString, aReplace:Bool) : Void;
	function beginRestore(viewer:NsIContentViewer, top:Bool) : Void;
	function createAboutBlankContentViewer(aPrincipal:NsIPrincipal) : Void;
	function createLoadInfo(loadInfo:NsIDocShellLoadInfo) : Void;
	function DetachEditorFromWindow() : Void;
	function finishRestore() : Void;
	function firePageHideNotification(isUnload:Bool) : Void;
	function fireUnloadNotification() : Void;
	function getDocShellEnumerator(aItemType:Long, aDirection:Long) : NsISimpleEnumerator;
	function getSessionStorageForPrincipal(principal:NsIPrincipal, documentURI:DOMString, create:Bool) : NsIDOMStorage;
	function getSessionStorageForURI(uri:NsIURI, documentURI:DOMString) : NsIDOMStorage;
	function historyPurged(numEntries:Long) : Void;
	function internalLoad(aURI:NsIURI, aReferrer:NsIURI, aOwner:NsISupports, aFlags:PRUint32, aWindowTarget:Wstring, aTypeHint:String, aPostDataStream:NsIInputStream, aHeadersStream:NsIInputStream, aLoadFlags:ULong, aSHEntry:NsISHEntry, firstParty:Bool, aDocShell:NsIDocShell, aRequest:NsIRequest) : Void;
	function isBeingDestroyed() : Bool;
	function loadStream(aStream:NsIInputStream, aURI:NsIURI, aContentType:ACString, aContentCharset:ACString, aLoadInfo:NsIDocShellLoadInfo) : Void;
	function loadURI(uri:NsIURI, loadInfo:NsIDocShellLoadInfo, aLoadFlags:ULong, firstParty:Bool) : Void;
	function prepareForNewContentModel() : Void;
	function resumeRefreshURIs() : Void;
	function setChildOffset(offset:ULong) : Void;
	function setCurrentURI(aURI:NsIURI) : Void;
	function suspendRefreshURIs() : Void;
	function tabToTreeOwner(forward:Bool, tookFocus:Bool) : Void;
}
