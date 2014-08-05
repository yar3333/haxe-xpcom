package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIErrorService") extern class NsIErrorService extends NsISupports
{
	public static inline function getService() : NsIErrorService return Components.classes[cast "@mozilla.org/xpcom/error-service;1"].getService(Components.interfaces.nsIErrorService);
}
