package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessible2") extern class IAccessible2 extends IAccessible
{
	function attributes(attributes:BSTR) : HRESULT;
	function extendedRole(extendedRole:BSTR) : HRESULT;
	function extendedStates(maxExtendedStates:Long, extendedStates:BSTR, nExtendedStates:Long) : HRESULT;
	function groupPosition(groupLevel:Long, similarItemsInGroup:Long, positionInGroup:Long) : HRESULT;
	function indexInParent(indexInParent:Long) : HRESULT;
	function locale(locale:IA2Locale) : HRESULT;
	function localizedExtendedRole(localizedExtendedRole:BSTR) : HRESULT;
	function localizedExtendedStates(maxLocalizedExtendedStates:Long, localizedExtendedStates:BSTR, nLocalizedExtendedStates:Long) : HRESULT;
	function nExtendedStates(nExtendedStates:Long) : HRESULT;
	function nRelations(nRelations:Long) : HRESULT;
	function relation(relationIndex:Long, relation:IAccessibleRelation) : HRESULT;
	function relations(maxRelations:Long, relations:IAccessibleRelation, nRelations:Long) : HRESULT;
	function role(role:Long) : HRESULT;
	function scrollTo(scrollType:IA2ScrollType) : HRESULT;
	function scrollToPoint(coordinateType:IA2CoordinateType, x:Long, y:Long) : HRESULT;
	function states(states:AccessibleStates) : HRESULT;
	function uniqueID(uniqueID:Long) : HRESULT;
	function windowHandle(windowHandle:HWND) : HRESULT;
}
