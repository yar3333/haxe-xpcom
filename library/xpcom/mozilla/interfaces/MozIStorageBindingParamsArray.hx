package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIStorageBindingParamsArray") extern class MozIStorageBindingParamsArray extends NsISupports
{
	function addParams(aParameters:MozIStorageBindingParams) : Void;
	function newBindingParams() : MozIStorageBindingParams;
}
