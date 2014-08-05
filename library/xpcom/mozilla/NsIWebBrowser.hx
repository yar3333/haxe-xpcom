package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebBrowser") extern class NsIWebBrowser extends NsISupports
{
	/**
	 * The chrome object associated with the browser instance. The embedder must create one chrome object for each browser object that is instantiated. The embedder must associate the two by setting this property to point to the chrome object before creating the browser window via the browser's nsIBaseWindow interface.
	 * The chrome object must also implement nsIEmbeddingSiteWindow.
	 * The chrome may optionally implement nsIInterfaceRequestor, nsIWebBrowserChromeFocus, nsIContextMenuListener and nsITooltipListener to receive additional notifications from the browser object.
	 * The chrome object may optionally implement nsIWebProgressListener instead of explicitly calling addWebBrowserListener() and removeWebBrowserListener() to register a progress listener object. If the implementation does this, it must also implement nsIWeakReference.
	 * Note: The implementation should not refcount the supplied chrome object; it should assume that a non nsnull value is always valid. The embedder must explicitly set this value back to nsnull if the chrome object is destroyed before the browser object. Note: nsIInterfaceRequestor and nsIWeakReference might also need to be implemented by the chrome object.
	 */
	var containerWindow : NsIWebBrowserChrome;
	/**
	 * The top-level DOM window. The embedder may walk the entire DOM starting from this value. Read only.
	 */
	var contentDOMWindow : NsIDOMWindow;
	/**
	 * Indicates whether this web browser is active. Active means that it's visible enough that we want to avoid certain optimizations like discarding decoded image data and throttling the refresh driver. In Firefox, this corresponds to the visible tab. Defaults to true. For optimal performance, set it to false when appropriate.
	 */
	var isActive : Bool;
	/**
	 * URI content listener parent. The embedder may set this property to their own implementation if they intend to override or prevent how certain kinds of content are loaded.
	 * Note: If this attribute is set to an object that implements nsISupportsWeakReference, the implementation should get the nsIWeakReference and hold that. Otherwise, the implementation should not refcount this interface; it should assume that a non null value is always valid. In that case, the embedder should explicitly set this value back to null if the parent content listener is destroyed before the browser object.
	 */
	var parentURIContentListener : NsIURIContentListener;
}
