package xpcom.mozilla;

import xpcom.types.*;

@:native("IAccessibleImage") extern class IAccessibleImage extends IUnknown
{
	function description(description:BSTR) : HRESULT;
	function imagePosition(coordinateType:IA2CoordinateType, x:Long, y:Long) : HRESULT;
	function imageSize(height:Long, width:Long) : HRESULT;
}
