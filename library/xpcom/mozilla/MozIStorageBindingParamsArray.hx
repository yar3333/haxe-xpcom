package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIStorageBindingParamsArray") extern class MozIStorageBindingParamsArray extends NsISupports
{
	function addParams(aParameters:MozIStorageBindingParams) : Void;
	function newBindingParams() : MozIStorageBindingParams;
}
