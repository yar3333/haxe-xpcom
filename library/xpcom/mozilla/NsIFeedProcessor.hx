package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIFeedProcessor") extern class NsIFeedProcessor extends NsIStreamListener
{
	public static inline function createInstance() : NsIFeedProcessor return Components.Constructor("@mozilla.org/feed-processor;1", Components.interfaces.nsIFeedProcessor);
	
	/**
	 * The feed result listener that will respond to feed events.
	 */
	var listener : NsIFeedResultListener;
}
