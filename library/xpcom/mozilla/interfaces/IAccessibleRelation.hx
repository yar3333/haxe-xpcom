package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleRelation") extern class IAccessibleRelation extends IUnknown
{
	function localizedRelationType(localizedRelationType:{value:BSTR}) : HRESULT;
	function nTargets(nTargets:{value:Long}) : HRESULT;
	function relationType(relationType:{value:BSTR}) : HRESULT;
	function target(targetIndex:Long, target:{value:IUnknown}) : HRESULT;
	function targets(maxTargets:Long, targets:{value:IUnknown}, nTargets:{value:Long}) : HRESULT;
}
