package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIStringBundleOverride") extern class NsIStringBundleOverride extends NsISupports
{
	public static inline function createInstance() : NsIStringBundleOverride return xpcom.Components.Constructor("@mozilla.org/intl/stringbundle/text-override;1", xpcom.Components.interfaces.nsIStringBundleOverride);
	
	function enumerateKeysInBundle(url:AUTF8String) : NsISimpleEnumerator;
	function getStringFromName(url:AUTF8String, key:ACString) : AString;
}
