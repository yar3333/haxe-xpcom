package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFeedGenerator") extern class NsIFeedGenerator extends NsIFeedElementBase
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
