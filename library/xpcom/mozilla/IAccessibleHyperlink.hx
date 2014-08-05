package xpcom.mozilla;

import xpcom.types.*;

@:native("IAccessibleHyperlink") extern class IAccessibleHyperlink extends IAccessibleAction
{
	function anchor(index:Long, anchor:VARIANT) : HRESULT;
	function anchorTarget(index:Long, anchorTarget:VARIANT) : HRESULT;
	function endIndex(index:Long) : HRESULT;
	function startIndex(index:Long) : HRESULT;
	function valid(valid:Bool) : HRESULT;
}
