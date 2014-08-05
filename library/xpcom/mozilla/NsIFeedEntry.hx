package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFeedEntry") extern class NsIFeedEntry extends NsIFeedContainer
{
	/**
	 * The full text of the entry's content. This comes from the atom:content and/or content:encoded fields.
	 */
	var content : NsIFeedTextConstruct;
	/**
	 * An array of all the enclosures included in the entry. These are used by podcasts, photocasts, and so forth.
	 */
	var enclosures : NsIArray;
	/**
	 * An array of all the enclosures or other media that might be displayed inline in the entry.
	 */
	var mediaContent : NsIArray;
	/**
	 * A reference to the entry's parent, which is either a feed (nsIFeed or another entry.
	 */
	var parent : NsIFeedContainer;
	/**
	 * A string indicating the date on which the entry was published, in RFC822 format. This date is parsable by both JavaScript (via Date.parse()) and mail code. Note, that the related updated attribute is available from the nsIFeedContainer interface.
	 */
	var published : AString;
	/**
	 * A summary of the feed entry's content. This is generated automatically using the entry's description, subtitle, summary, content, and appropriate extensions.
	 */
	var summary : NsIFeedTextConstruct;
}
