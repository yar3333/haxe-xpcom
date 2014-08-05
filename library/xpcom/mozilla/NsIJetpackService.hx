package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIJetpackService") extern class NsIJetpackService extends NsISupports
{
	public static inline function getService() : NsIJetpackService return Components.classes[cast "@mozilla.org/jetpack/service;1"].getService(Components.interfaces.nsIJetpackService);
}
