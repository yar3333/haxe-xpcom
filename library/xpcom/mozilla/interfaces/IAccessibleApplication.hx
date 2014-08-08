package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleApplication") extern class IAccessibleApplication extends IUnknown
{
	function appName(name:BSTR) : HRESULT;
	function appVersion(version:BSTR) : HRESULT;
	function toolkitName(name:BSTR) : HRESULT;
	function toolkitVersion(version:BSTR) : HRESULT;
}
