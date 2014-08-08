package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleAction") extern class IAccessibleAction extends IUnknown
{
	function description(actionIndex:Long, description:{value:BSTR}) : HRESULT;
	function doAction(actionIndex:Long) : HRESULT;
	function keyBinding(actionIndex:Long, nMaxBindings:Long, keyBindings:{value:BSTR}, nBindings:{value:Long}) : HRESULT;
	function localizedName(actionIndex:Long, localizedName:{value:BSTR}) : HRESULT;
	function nActions(nActions:{value:Long}) : HRESULT;
	function name(actionIndex:Long, name:{value:BSTR}) : HRESULT;
}
