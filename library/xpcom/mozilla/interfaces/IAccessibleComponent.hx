package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleComponent") extern class IAccessibleComponent extends IUnknown
{
	function background(background:IA2Color) : HRESULT;
	function foreground(foreground:IA2Color) : HRESULT;
	function locationInParent(x:Long, y:Long) : HRESULT;
}
