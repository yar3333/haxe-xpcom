package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIToolkitProfileService") extern class NsIToolkitProfileService extends NsISupports
{
	/**
	 * The number of user profiles currently in existence. This will always return 0, 1, or 2; if there are more than 2 profiles, 2 is always returned. Read only.
	 */
	var profileCount : ULong;
	/**
	 * An enumerator providing access to the list of profiles; each profile is an nsIToolkitProfile object (though you must first call aProfile.QueryInterface(Components.interfaces.nsIToolkitProfile) to get access to its attributes and methods).
	 */
	var profiles : NsISimpleEnumerator;
	/**
	 * The profile that is marked as "Default=1" in the Profiles.ini file. (NOT the profile currently in use.) Not sure what happens if you change this setting but someone said: You can change profiles by setting this attribute's value. This may throw an NS_ERROR_FAILURE (0x80004005) when trying to get the current profile if it's unavailable or if permissions restrict access.
	 */
	var selectedProfile : NsIToolkitProfile;
	var startOffline : Bool;
	var startWithLastProfile : Bool;
	
	function createProfile(aRootDir:NsILocalFile, aName:AUTF8String) : NsIToolkitProfile;
	function flush() : Void;
	function getProfileByName(aName:AUTF8String) : NsIToolkitProfile;
	function lockProfilePath(aDirectory:NsILocalFile, aTempDirectory:NsILocalFile) : NsIProfileLock;
}
