package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFeedPerson") extern class NsIFeedPerson extends NsIFeedElementBase
{
	/**
	 * The person's email address.
	 */
	var email : AString;
	/**
	 * The name of the person.
	 */
	var name : AString;
	/**
	 * A URI associated with the person; this is most likely the person's home page.
	 */
	var uri : NsIURI;
}
