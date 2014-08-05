package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIMicrosummaryService") extern class NsIMicrosummaryService extends NsISupports
{
	public static inline function getService() : NsIMicrosummaryService return Components.classes[cast "@mozilla.org/microsummary/service;1"].getService(Components.interfaces.nsIMicrosummaryService);
}
