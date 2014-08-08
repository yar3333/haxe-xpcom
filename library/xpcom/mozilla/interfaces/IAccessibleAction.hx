package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleAction") extern class IAccessibleAction extends IUnknown
{
	function description(actionIndex:Long, description:BSTR) : HRESULT;
	function doAction(actionIndex:Long) : HRESULT;
	function keyBinding(actionIndex:Long, nMaxBindings:Long, keyBindings:BSTR, nBindings:Long) : HRESULT;
	function localizedName(actionIndex:Long, localizedName:BSTR) : HRESULT;
	function nActions(nActions:Long) : HRESULT;
	function name(actionIndex:Long, name:BSTR) : HRESULT;
}
