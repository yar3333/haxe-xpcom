package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMicrosummary") extern class NsIMicrosummary extends NsISupports
{
	/**
	 * The content of the microsummary. Since generators and pages can be remote resources, and we need them to generate the content, this may not always be available. Read only.
	 */
	var content : AString;
	/**
	 * The generator that generates this microsummary. May need to be loaded.
	 */
	var generator : NsIMicrosummaryGenerator;
	/**
	 * Used when a site author has indicated that a microsummary (or an associated generator) will no longer be available. Read only.
	 */
	var needsRemoval : Bool;
	/**
	 * The URI of the page being summarized. Read only.
	 */
	var pageURI : NsIURI;
	/**
	 * The minimum interval after which this microsummary would like to be refreshed or null if it doesn't care. Read only.
	 */
	var updateInterval : Long;
	
	function addObserver(observer:NsIMicrosummaryObserver) : Void;
	function equals(aOther:NsIMicrosummary) : Bool;
	function removeObserver(observer:NsIMicrosummaryObserver) : Void;
	function update() : Void;
}
