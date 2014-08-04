package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIFeedPerson") extern class NsIFeedPerson extends NsIFeedElementBase
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
