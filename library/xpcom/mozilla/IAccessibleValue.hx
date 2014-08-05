package xpcom.mozilla;

import xpcom.types.*;

@:native("IAccessibleValue") extern class IAccessibleValue extends IUnknown
{
	function currentValue(currentValue:VARIANT) : HRESULT;
	function maximumValue(maximumValue:VARIANT) : HRESULT;
	function minimumValue(minimumValue:VARIANT) : HRESULT;
	function setCurrentValue(value:VARIANT) : HRESULT;
}
