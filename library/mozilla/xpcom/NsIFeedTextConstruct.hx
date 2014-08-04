package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIFeedTextConstruct") extern class NsIFeedTextConstruct extends NsISupports
{
	/**
	 * If the text construct contains HTML or XHTML, relative references in the content should be resolved against this base URI.
	 */
	var base : NsIURI;
	/**
	 * The language of the text (such as "en-US" for U.S. English).
	 */
	var lang : AString;
	/**
	 * The actual text content. This string may contain markup if the type is either "html" or "xhtml".
	 */
	var text : AString;
	/**
	 * The type of content described; one of "text", "html", or "xhtml".
	 */
	var type : AString;
}
