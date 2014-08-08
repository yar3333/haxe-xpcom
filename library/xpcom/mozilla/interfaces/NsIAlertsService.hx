package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAlertsService") extern class NsIAlertsService extends NsISupports
{
	public static inline function getService() : NsIAlertsService return Components.classes[cast "@mozilla.org/alerts-service;1"].getService(Components.interfaces.nsIAlertsService);
	
	function showAlertNotification(imageUrl:AString, title:AString, text:AString, ?textClickable:Bool, ?cookie:AString, ?alertListener:NsIObserver, ?name:AString, ?dir:AString, ?lang:AString) : Void;
}
