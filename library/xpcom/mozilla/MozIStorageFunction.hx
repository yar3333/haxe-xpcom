package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIStorageFunction") extern class MozIStorageFunction extends NsISupports
{
	function onFunctionCall(aFunctionArguments:MozIStorageValueArray) : NsIVariant;
}
