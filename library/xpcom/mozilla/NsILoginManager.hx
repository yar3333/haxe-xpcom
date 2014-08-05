package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsILoginManager") extern class NsILoginManager extends NsISupports
{
	public static inline function createInstance() : NsILoginManager return Components.Constructor("@mozilla.org/login-manager;1", Components.interfaces.nsILoginManager);
}
