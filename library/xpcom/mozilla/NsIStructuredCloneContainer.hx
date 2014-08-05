package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIStructuredCloneContainer") extern class NsIStructuredCloneContainer extends NsISupports
{
	/**
	 * Get the version of the structured clone algorithm which was used to generate this container's serialized buffer. Read only.
	 */
	var formatVersion : ULong;
	/**
	 * Get the size in bytes of this container's serialized data. Read only.
	 */
	var serializedNBytes : ULongLong;
	
	function deserializeToVariant() : NsIVariant;
	function getDataAsBase64() : AString;
	function initFromBase64(aData:AString, aFormatVersion:ULong) : Void;
	function initFromVariant(aData:NsIVariant) : Void;
}
