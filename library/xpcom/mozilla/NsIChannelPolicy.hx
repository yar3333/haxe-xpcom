package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIChannelPolicy") extern class NsIChannelPolicy extends NsISupports
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
