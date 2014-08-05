package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIAlertsService") extern class NsIAlertsService extends NsISupports
{
	public static inline function getService() : NsIAlertsService return Components.classes[cast "@mozilla.org/alerts-service;1"].getService(Components.interfaces.nsIAlertsService);
}
