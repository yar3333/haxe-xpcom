package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUserInfo") extern class NsIUserInfo extends NsISupports
{
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
