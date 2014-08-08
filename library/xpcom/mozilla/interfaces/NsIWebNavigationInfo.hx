package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebNavigationInfo") extern class NsIWebNavigationInfo extends NsISupports
{
	public static inline function getService() : NsIWebNavigationInfo return Components.classes[cast "@mozilla.org/webnavigation-info;1"].getService(Components.interfaces.nsIWebNavigationInfo);
	
	function isTypeSupported(aType:ACString, aWebNav:NsIWebNavigation) : ULong;
}
