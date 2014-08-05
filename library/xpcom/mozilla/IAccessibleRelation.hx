package xpcom.mozilla;

import xpcom.types.*;

@:native("IAccessibleRelation") extern class IAccessibleRelation extends IUnknown
{
	function localizedRelationType(localizedRelationType:BSTR) : HRESULT;
	function nTargets(nTargets:Long) : HRESULT;
	function relationType(relationType:BSTR) : HRESULT;
	function target(targetIndex:Long, target:IUnknown) : HRESULT;
	function targets(maxTargets:Long, targets:IUnknown, nTargets:Long) : HRESULT;
}
