package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIStringBundleService") extern class NsIStringBundleService extends NsISupports
{
	public static inline function getService() : NsIStringBundleService return Components.classes[cast "@mozilla.org/intl/stringbundle;1"].getService(Components.interfaces.nsIStringBundleService);
	
	function createBundle(aURLSpec:String) : NsIStringBundle;
	function createExtensibleBundle(aRegistryKey:String) : NsIStringBundle;
	function flushBundles() : Void;
	function formatStatusMessage(aStatus:Nsresult, aStatusArg:Wstring) : Wstring;
}
