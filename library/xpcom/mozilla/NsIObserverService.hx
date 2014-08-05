package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIObserverService") extern class NsIObserverService extends NsISupports
{
	public static inline function getService() : NsIObserverService return Components.classes[cast "@mozilla.org/observer-service;1"].getService(Components.interfaces.nsIObserverService);
}
