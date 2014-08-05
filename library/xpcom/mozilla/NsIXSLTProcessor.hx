package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIXSLTProcessor") extern class NsIXSLTProcessor extends NsISupports
{
	public static inline function createInstance() : NsIXSLTProcessor return Components.Constructor("@mozilla.org/document-transformer;1", Components.interfaces.nsIXSLTProcessor);
}
