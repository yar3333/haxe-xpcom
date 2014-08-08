package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIJetpackService") extern class NsIJetpackService extends NsISupports
{
	public static inline function getService() : NsIJetpackService
	{
		return xpcom.Components.classes[cast "@mozilla.org/jetpack/service;1"].getService(NsIJetpackService);
	}
	
	function createJetpack() : NsIJetpack;
}
