package xpcom.mozilla.modules;

import xpcom.mozilla.interfaces.NsILoadContext;

@:native("PrivateBrowsingUtils") extern class PrivateBrowsingUtils
{
	private static function __init__() : Void
	{
		Components.utils.importGlobally("resource://gre/modules/PrivateBrowsingUtils.jsm");
	}
	
	static function privacyContextFromWindow(aWindow:Dynamic) : NsILoadContext;
}
