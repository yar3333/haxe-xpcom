package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIStringBundleService") extern class NsIStringBundleService extends NsISupports
{
	public static inline function getService() : NsIStringBundleService return xpcom.Components.classes[cast "@mozilla.org/intl/stringbundle;1"].getService(xpcom.Components.interfaces.nsIStringBundleService);
	
	function createBundle(aURLSpec:String) : NsIStringBundle;
	function createExtensibleBundle(aRegistryKey:String) : NsIStringBundle;
	function flushBundles() : Void;
	function formatStatusMessage(aStatus:Nsresult, aStatusArg:Wstring) : Wstring;
}
