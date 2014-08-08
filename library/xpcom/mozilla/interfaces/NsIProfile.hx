package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProfile") extern class NsIProfile extends NsISupports
{
	public static inline function getService() : NsIProfile
	{
		return xpcom.Components.classes[cast "@mozilla.org/profile/manager;1"].getService(NsIProfile);
	}
	
	/**
	 * The name of the profile currently in use.
	 */
	var currentProfile : Wstring;
	/**
	 * The number of profiles. Read only.
	 */
	var profileCount : Long;
	
	function cloneProfile(profileName:Wstring) : Void;
	function createNewProfile(profileName:Wstring, nativeProfileDir:Wstring, langcode:Wstring, useExistingDir:Bool) : Void;
	function deleteProfile(name:Wstring, canDeleteFiles:Bool) : Void;
	function getProfileList(length:{value:ULong}, profileNames:Array<Wstring>) : Void;
	function profileExists(profileName:Wstring) : Bool;
	function renameProfile(oldName:Wstring, newName:Wstring) : Void;
	function shutDownCurrentProfile(shutDownType:ULong) : Void;
}
