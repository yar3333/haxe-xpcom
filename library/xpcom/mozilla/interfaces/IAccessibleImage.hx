package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleImage") extern class IAccessibleImage extends IUnknown
{
	function description(description:BSTR) : HRESULT;
	function imagePosition(coordinateType:IA2CoordinateType, x:Long, y:Long) : HRESULT;
	function imageSize(height:Long, width:Long) : HRESULT;
}
