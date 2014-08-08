package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleValue") extern class IAccessibleValue extends IUnknown
{
	function currentValue(currentValue:{value:VARIANT}) : HRESULT;
	function maximumValue(maximumValue:{value:VARIANT}) : HRESULT;
	function minimumValue(minimumValue:{value:VARIANT}) : HRESULT;
	function setCurrentValue(value:VARIANT) : HRESULT;
}
