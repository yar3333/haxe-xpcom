package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsILivemarkService") extern class NsILivemarkService extends NsISupports
{
	public static inline function getService() : NsILivemarkService return Components.classes[cast "@mozilla.org/browser/livemark-service;2"].getService(Components.interfaces.nsILivemarkService);
}
