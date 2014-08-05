package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsITaggingService") extern class NsITaggingService extends NsISupports
{
	public static inline function getService() : NsITaggingService return Components.classes[cast "@mozilla.org/browser/tagging-service;1"].getService(Components.interfaces.nsITaggingService);
	
	/**
	 * Retrieves all tags used to tag URIs in the data-base (sorted by name).
	 */
	var allTags : NsIVariant;
	/**
	 * Retrieves the URL spec for the tag container icon
	 */
	var tagContainerIconSpec : AUTF8String;
}
