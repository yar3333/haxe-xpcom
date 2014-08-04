package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIFeedProcessor") extern class NsIFeedProcessor extends NsIStreamListener
{
	/**
	 * The feed result listener that will respond to feed events.
	 */
	var listener : NsIFeedResultListener;
}
