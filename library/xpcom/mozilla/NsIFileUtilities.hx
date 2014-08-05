package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFileUtilities") extern class NsIFileUtilities extends NsISupports
{
	function getProgramPath(aProgramPath:ConstCharPtr) : Void;
	function getTempDirPath(aTempDirPath:ConstCharPtr) : Void;
	function newTempFileName(aPrefix:String, aLength:ULong, aBuffer:CharPtr) : Void;
}
