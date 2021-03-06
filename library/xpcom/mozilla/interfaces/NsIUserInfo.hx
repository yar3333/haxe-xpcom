package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUserInfo") extern class NsIUserInfo extends NsISupports
{
	public static inline function getService() : NsIUserInfo
	{
		return xpcom.Components.classes[cast "@mozilla.org/userinfo;1"].getService(NsIUserInfo);
	}
	
	/**
	 * Read only.
	 */
	var domain : String;
	/**
	 * Read only.
	 */
	var emailAddress : String;
	/**
	 * Read only.
	 */
	var fullname : Wstring;
	/**
	 * Read only.
	 */
	var username : String;
}
