package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFeedContainer") extern class NsIFeedContainer extends NsIFeedElementBase
{
	/**
	 * An array of nsIFeedPerson objects describing the authors of the feed or entry.
	 */
	var authors : NsIArray;
	/**
	 * An array of the categories found in a feed or entry. Note: The returned array will contain nsIFeedCategory objects, except that interface has not been implemented yet.
	 */
	var categories : NsIArray;
	/**
	 * An array of nsIFeedPerson objects describing contributors to the feed or entry.
	 */
	var contributors : NsIArray;
	/**
	 * Provides access to all the fields found in the document. Common Atom and RSS fields are normalized, including some namespaced extensions such as "dc:subject" and "content:encoded". Consumers can avoid normalization by checking the feed type and accessing specific fields.
	 * Common namespaces are accessed using prefixes, such as get("dc:subject");. See nsIFeedResult.registerExtensionPrefix() for more information about prefixes.
	 */
	var fields : NsIWritablePropertyBag2;
	/**
	 * A string that identifies the feed or entry. Not all feeds have these, but all major feed formats have IDs for each entry.
	 */
	var id : AString;
	/**
	 * A URI containing the primary link for the feed or entry.
	 */
	var link : NsIURI;
	/**
	 * An array of all links for a feed or entry.
	 */
	var links : NsIArray;
	/**
	 * The feed or entry's rights or license text.
	 */
	var rights : NsIFeedTextConstruct;
	/**
	 * The feed or entry's title. Keep in mind that some feeds have no title, and some use markup in their titles, so be cautious when decoding this attribute.
	 */
	var title : NsIFeedTextConstruct;
	/**
	 * A string containing the date the feed or entry was last updated, in RFC822 form. This string is parsable by JavaScript and mail code.
	 */
	var updated : AString;
	
	function normalize() : Void;
}
