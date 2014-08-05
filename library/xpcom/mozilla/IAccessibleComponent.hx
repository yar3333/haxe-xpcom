package xpcom.mozilla;

import xpcom.types.*;

@:native("IAccessibleComponent") extern class IAccessibleComponent extends IUnknown
{
	function background(background:IA2Color) : HRESULT;
	function foreground(foreground:IA2Color) : HRESULT;
	function locationInParent(x:Long, y:Long) : HRESULT;
}
