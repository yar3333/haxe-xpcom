package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIStringBundleOverride") extern class NsIStringBundleOverride extends NsISupports
{
	public static inline function createInstance() : NsIStringBundleOverride return Components.Constructor("@mozilla.org/intl/stringbundle/text-override;1", Components.interfaces.nsIStringBundleOverride);
	
	function enumerateKeysInBundle(url:AUTF8String) : NsISimpleEnumerator;
	function getStringFromName(url:AUTF8String, key:ACString) : AString;
}
