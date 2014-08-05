package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIScriptableIO") extern class NsIScriptableIO extends NsISupports
{
	function getFile(aLocation:AString, aFileName:AString) : NsIFile;
	function getFileWithPath(aFilePath:AString) : NsIFile;
	function newInputStream(aBase:NsIVariant, aMode:AString, ?aCharSet:AString, ?aReplaceChar:AString, ?aBufferSize:ULong) : NsISupports;
	function newOutputStream(aBase:NsIVariant, aMode:AString, ?aCharSet:AString, ?aReplaceChar:AString, ?aBufferSize:ULong, ?aPermissions:ULong) : NsISupports;
	function newURI(aUri:NsIVariant) : NsIURI;
}
