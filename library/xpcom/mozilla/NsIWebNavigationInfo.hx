package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIWebNavigationInfo") extern class NsIWebNavigationInfo extends NsISupports
{
	public static inline function getService() : NsIWebNavigationInfo return Components.classes[cast "@mozilla.org/webnavigation-info;1"].getService(Components.interfaces.nsIWebNavigationInfo);
	
	function isTypeSupported(aType:ACString, aWebNav:NsIWebNavigation) : ULong;
}
