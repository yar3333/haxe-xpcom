package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIProfile") extern class NsIProfile extends NsISupports
{
	public static inline function getService() : NsIProfile return Components.classes[cast "@mozilla.org/profile/manager;1"].getService(Components.interfaces.nsIProfile);
	
	/**
	 * The name of the profile currently in use.
	 */
	var currentProfile : Wstring;
	/**
	 * The number of profiles. Read only.
	 */
	var profileCount : Long;
}
