package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleComponent") extern class IAccessibleComponent extends IUnknown
{
	function background(background:{value:IA2Color}) : HRESULT;
	function foreground(foreground:{value:IA2Color}) : HRESULT;
	function locationInParent(x:{value:Long}, y:{value:Long}) : HRESULT;
}
