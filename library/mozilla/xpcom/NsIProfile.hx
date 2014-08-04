package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIProfile") extern class NsIProfile extends NsISupports
{
	/**
	 * The name of the profile currently in use.
	 */
	var currentProfile : Wstring;
	/**
	 * The number of profiles. Read only.
	 */
	var profileCount : Long;
}
