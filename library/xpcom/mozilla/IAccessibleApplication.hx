package xpcom.mozilla;

import xpcom.types.*;

@:native("IAccessibleApplication") extern class IAccessibleApplication extends IUnknown
{
	function appName(name:BSTR) : HRESULT;
	function appVersion(version:BSTR) : HRESULT;
	function toolkitName(name:BSTR) : HRESULT;
	function toolkitVersion(version:BSTR) : HRESULT;
}
