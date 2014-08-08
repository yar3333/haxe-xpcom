package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFeedProcessor") extern class NsIFeedProcessor extends NsIStreamListener
{
	public static inline function createInstance() : NsIFeedProcessor return xpcom.Components.Constructor("@mozilla.org/feed-processor;1", xpcom.Components.interfaces.nsIFeedProcessor);
	
	/**
	 * The feed result listener that will respond to feed events.
	 */
	var listener : NsIFeedResultListener;
	
	function parseAsync(requestObserver:NsIRequestObserver, uri:NsIURI) : Void;
	function parseFromStream(stream:NsIInputStream, uri:NsIURI) : Void;
	function parseFromString(str:AString, uri:NsIURI) : Void;
}
