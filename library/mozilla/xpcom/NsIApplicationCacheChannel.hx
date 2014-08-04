package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIApplicationCacheChannel") extern class NsIApplicationCacheChannel extends NsIApplicationCacheContainer
{
	/**
	 * When true, the channel will choose an application cache if one was not explicitly provided and none is available from the notification callbacks. The default value is false. This attribute will not be transferred through a redirect. Exceptions thrown  NS_ERROR_ALREADY_OPENED If set after calling AsyncOpen() on the channel.
	 */
	var chooseApplicationCache : Bool;
	/**
	 * true if the channel will ask its notification callbacks for an application cache if one is not explicitly provided. The default value is true. Exceptions thrown  NS_ERROR_ALREADY_OPENED If set after calling AsyncOpen() on the channel.
	 */
	var inheritApplicationCache : Bool;
	/**
	 * true if the resource was loaded from the application cache, otherwise false. This value may be false even if the resource is assigned to an application cache if, for example, it was loaded as a fallback. Read only.
	 */
	var loadedFromApplicationCache : PRBool;
}
