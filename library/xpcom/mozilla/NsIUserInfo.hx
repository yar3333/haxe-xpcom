package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIUserInfo") extern class NsIUserInfo extends NsISupports
{
	public static inline function getService() : NsIUserInfo return Components.classes[cast "@mozilla.org/userinfo;1"].getService(Components.interfaces.nsIUserInfo);
	
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
