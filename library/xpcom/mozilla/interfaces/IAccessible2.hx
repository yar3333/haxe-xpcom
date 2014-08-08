package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessible2") extern class IAccessible2 extends IAccessible
{
	function attributes(attributes:{value:BSTR}) : HRESULT;
	function extendedRole(extendedRole:{value:BSTR}) : HRESULT;
	function extendedStates(maxExtendedStates:Long, extendedStates:{value:BSTR}, nExtendedStates:{value:Long}) : HRESULT;
	function groupPosition(groupLevel:{value:Long}, similarItemsInGroup:{value:Long}, positionInGroup:{value:Long}) : HRESULT;
	function indexInParent(indexInParent:{value:Long}) : HRESULT;
	function locale(locale:{value:IA2Locale}) : HRESULT;
	function localizedExtendedRole(localizedExtendedRole:{value:BSTR}) : HRESULT;
	function localizedExtendedStates(maxLocalizedExtendedStates:Long, localizedExtendedStates:{value:BSTR}, nLocalizedExtendedStates:{value:Long}) : HRESULT;
	function nExtendedStates(nExtendedStates:{value:Long}) : HRESULT;
	function nRelations(nRelations:{value:Long}) : HRESULT;
	function relation(relationIndex:Long, relation:{value:IAccessibleRelation}) : HRESULT;
	function relations(maxRelations:Long, relations:{value:IAccessibleRelation}, nRelations:{value:Long}) : HRESULT;
	function role(role:{value:Long}) : HRESULT;
	function scrollTo(scrollType:IA2ScrollType) : HRESULT;
	function scrollToPoint(coordinateType:IA2CoordinateType, x:Long, y:Long) : HRESULT;
	function states(states:{value:AccessibleStates}) : HRESULT;
	function uniqueID(uniqueID:{value:Long}) : HRESULT;
	function windowHandle(windowHandle:{value:HWND}) : HRESULT;
}
