package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFeedGenerator") extern class NsIFeedGenerator extends NsIFeedElementBase
{
	/**
	 * The name of the software that created the feed.
	 */
	var agent : AString;
	/**
	 * A URI associated with the generator software.
	 */
	var uri : NsIURI;
	/**
	 * A string indicating the version of the generator software that created the feed.
	 */
	var version : AString;
}
