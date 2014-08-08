package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFileUtilities") extern class NsIFileUtilities extends NsISupports
{
	function getProgramPath(aProgramPath:{value:ConstCharPtr}) : Void;
	function getTempDirPath(aTempDirPath:{value:ConstCharPtr}) : Void;
	function newTempFileName(aPrefix:String, aLength:ULong, aBuffer:CharPtr) : Void;
}
