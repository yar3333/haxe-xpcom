package xpcom.mozilla.modules;

import xpcom.mozilla.interfaces.NsILoadContext;
import xpcom.mozilla.interfaces.NsIWebBrowserPersist;

@:native("PrivateBrowsingUtils") extern class PrivateBrowsingUtils
{
	private static function __init__() : Void
	{
		Components.utils.importGlobally("resource://gre/modules/PrivateBrowsingUtils.jsm");
	}
	
	static function privacyContextFromWindow(aWindow:Dynamic) : NsILoadContext;
	
	static inline function createWebBrowserPersist() : NsIWebBrowserPersist
	{
		return xpcom.Components.classes[cast "@mozilla.org/embedding/browser/nsWebBrowserPersist;1"].createInstance(NsIWebBrowserPersist);
	}
}
