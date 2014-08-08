package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleApplication") extern class IAccessibleApplication extends IUnknown
{
	function appName(name:{value:BSTR}) : HRESULT;
	function appVersion(version:{value:BSTR}) : HRESULT;
	function toolkitName(name:{value:BSTR}) : HRESULT;
	function toolkitVersion(version:{value:BSTR}) : HRESULT;
}
