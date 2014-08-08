package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleValue") extern class IAccessibleValue extends IUnknown
{
	function currentValue(currentValue:VARIANT) : HRESULT;
	function maximumValue(maximumValue:VARIANT) : HRESULT;
	function minimumValue(minimumValue:VARIANT) : HRESULT;
	function setCurrentValue(value:VARIANT) : HRESULT;
}
