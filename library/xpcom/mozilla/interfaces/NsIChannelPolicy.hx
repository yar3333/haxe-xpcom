package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIChannelPolicy") extern class NsIChannelPolicy extends NsISupports
{
	/**
	 * A nsIContentSecurityPolicy object to determine if the load should be allowed.
	 */
	var contentSecurityPolicy : NsISupports;
	/**
	 * Indicates what type of content is being loaded, for example nsIContentPolicy::TYPE_IMAGE.
	 */
	var loadType : ULong;
}
