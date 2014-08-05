package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIIDNService") extern class NsIIDNService extends NsISupports
{
	public static inline function getService() : NsIIDNService return Components.classes[cast "@mozilla.org/network/idn-service;1"].getService(Components.interfaces.nsIIDNService);
}
