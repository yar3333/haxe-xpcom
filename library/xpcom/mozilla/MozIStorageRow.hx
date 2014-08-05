package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIStorageRow") extern class MozIStorageRow extends MozIStorageValueArray
{
	function getResultByIndex(aIndex:ULong) : NsIVariant;
	function getResultByName(aName:AUTF8String) : NsIVariant;
}
