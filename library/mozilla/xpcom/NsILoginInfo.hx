package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsILoginInfo") extern class NsILoginInfo
{
	/**
	 * The URL a form-based login was submitted to. For logins obtained from HTML forms, this field is the action attribute from the form element, with the path removed (for example, "http://www.site.com"). Forms with no action attribute default to submitting to their origin URL, so that is stored here. This field is null for logins attained from protocol authentications.
	 */
	var formSubmitURL : AString;
	/**
	 * The hostname to which the login applies, formatted as a URL (for example, "http://www.site.com"). A port number (":123") may be appended.
	 */
	var hostname : AString;
	/**
	 * The HTTP Realm for which the login was requested. When an HTTP server sends a 401 result, the WWW-Authenticate header includes a realm to identify the "protection space." See RFC 2617. If the result did not include a realm, or it was blank, the hostname is used instead. For logins obtained from HTML forms, this field is null.
	 */
	var httpRealm : AString;
	/**
	 * The password for the login.
	 */
	var password : AString;
	/**
	 * The name attribute for the password input in a form. Non-form logins should specify an empty string ("").
	 */
	var passwordField : AString;
	/**
	 * The username for the login.
	 */
	var username : AString;
	/**
	 * The name attribute for the username input in a form. Non-form logins should specify an empty string ("").
	 */
	var usernameField : AString;
}
