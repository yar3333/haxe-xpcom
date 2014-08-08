package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUpdatePatch") extern class NsIUpdatePatch extends NsISupports
{
	/**
	 * The final URL this patch was being downloaded from.
	 */
	var finalURL : AString;
	/**
	 * The hash function to use when determining the integrity of the patch file.
	 */
	var hashFunction : AString;
	/**
	 * The value of the hash function named in hashFunction that should be computed if the file is not corrupt.
	 */
	var hashValue : AString;
	/**
	 * true if this patch is currently selected as the patch to be downloaded and installed for this update transaction. false if another update is selected.
	 */
	var selected : Bool;
	/**
	 * The size of the patch file in bytes.
	 */
	var size : ULong;
	/**
	 * The state of this patch.
	 */
	var state : AString;
	/**
	 * The type of patch represented by the object:  "partial" A binary difference between two application versions. "complete" A complete patch containing all the replacement files to update to the new version.
	 */
	var type : AString;
	/**
	 * The URL from which the patch was downloaded.
	 */
	var URL : AString;
	
	function serialize(updates:NsIDOMDocument) : NsIDOMElement;
}
