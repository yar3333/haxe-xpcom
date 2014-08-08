package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleImage") extern class IAccessibleImage extends IUnknown
{
	function description(description:{value:BSTR}) : HRESULT;
	function imagePosition(coordinateType:IA2CoordinateType, x:{value:Long}, y:{value:Long}) : HRESULT;
	function imageSize(height:{value:Long}, width:{value:Long}) : HRESULT;
}
