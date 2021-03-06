package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFeedElementBase") extern class NsIFeedElementBase extends NsISupports
{
	/**
	 * All the attributes found on the element. Most derived interfaces provide convenience accessors for their standard fields, so this is only useful when looking for nonstandard fields.
	 */
	var attributes : NsISAXAttributes;
	/**
	 * The base URI for the entry or feed.
	 */
	var baseURI : NsIURI;
}
