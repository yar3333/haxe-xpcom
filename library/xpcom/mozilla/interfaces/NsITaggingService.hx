package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITaggingService") extern class NsITaggingService extends NsISupports
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
	
	function tagURI(aURI:NsIURI, aTags:NsIVariant) : Void;
	function untagURI(aURI:NsIURI, aTags:NsIVariant) : Void;
	function getURIsForTag(aTag:AString) : NsIVariant;
	function getTagsForURI(aURI:NsIURI, ?length:ULong, aTags:Array<Wstring>) : NsIVariant;
}
