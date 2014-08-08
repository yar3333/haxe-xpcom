package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIStorageRow") extern class MozIStorageRow extends MozIStorageValueArray
{
	function getResultByIndex(aIndex:ULong) : NsIVariant;
	function getResultByName(aName:AUTF8String) : NsIVariant;
}
