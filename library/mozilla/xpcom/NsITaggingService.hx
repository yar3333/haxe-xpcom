package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsITaggingService") extern class NsITaggingService extends NsISupports
{
	/**
	 * Retrieves all tags used to tag URIs in the data-base (sorted by name).
	 */
	var allTags : NsIVariant;
	/**
	 * Retrieves the URL spec for the tag container icon
	 */
	var tagContainerIconSpec : AUTF8String;
}
