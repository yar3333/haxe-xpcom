package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleHyperlink") extern class IAccessibleHyperlink extends IAccessibleAction
{
	function anchor(index:Long, anchor:{value:VARIANT}) : HRESULT;
	function anchorTarget(index:Long, anchorTarget:{value:VARIANT}) : HRESULT;
	function endIndex(index:{value:Long}) : HRESULT;
	function startIndex(index:{value:Long}) : HRESULT;
	function valid(valid:{value:Bool}) : HRESULT;
}
