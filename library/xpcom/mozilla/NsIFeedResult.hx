package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFeedResult") extern class NsIFeedResult extends NsISupports
{
	/**
	 * The feed processor sets the bozo bit when a feed triggers a fatal error during XML parsing. There may still be feed metadata and entries that were parsed before the error occurred.
	 */
	var bozo : Bool;
	/**
	 * The parsed feed or entry. null if a non-feed was processed.
	 */
	var doc : NsIFeedContainer;
	/**
	 * The HTTP response headers that accompanied the feed.
	 */
	var headers : NsIProperties;
	/**
	 * An XSLT stylesheet available to transform the source of the feed. Some feeds include this information in a processing instruction. It's generally intended for use by clients designed to work with specific feeds.
	 */
	var stylesheet : NsIURI;
	/**
	 * The address from which the feed was fetched.
	 */
	var uri : NsIURI;
	/**
	 * The version of the feed; null if a non-feed is processed. This value will be one of the following: atom, rss2, rss09, rss091, rss091userland, rss092, rss1, atom03, atomEntry, rssItem
	 */
	var version : AString;
}
