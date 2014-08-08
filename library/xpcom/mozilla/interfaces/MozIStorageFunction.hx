package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIStorageFunction") extern class MozIStorageFunction extends NsISupports
{
	function onFunctionCall(aFunctionArguments:MozIStorageValueArray) : NsIVariant;
}
