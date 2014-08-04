package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAuthInformation") extern class NsIAuthInformation extends NsISupports
{
	/**
	 * The authentication scheme used for this request, if applicable. If the protocol for this authentication does not support schemes, this will be the empty string. Otherwise, this will be a string such as "basic" or "digest". This string will always be in lowercase. Read only.
	 */
	var authenticationScheme : AUTF8String;
	/**
	 * The initial value should be used to prefill the dialog or be shown in some other way to the user. On return, this parameter should contain the domain entered by the user. This attribute is only used if flags include #NEED_DOMAIN.
	 */
	var domain : AString;
	/**
	 * Flags describing this dialog. A bitwise OR of the constants. It is possible that neither #AUTH_HOST nor #AUTH_PROXY are set. Auth prompts should ignore flags they do not understand; especially, they should not throw an exception because of an unsupported flag. Read only.
	 */
	var flags : ULong;
	/**
	 * The initial value should be used to prefill the dialog or be shown in some other way to the user. The password should not be shown in clear. On return, this parameter should contain the password entered by the user.
	 */
	var password : AString;
	/**
	 * The server-supplied realm of the authentication as defined in RFC 2617. Can be the empty string if the protocol does not support realms. Otherwise, this is a human-readable string like "Secret files". Read only.
	 */
	var realm : AString;
	/**
	 * The initial value should be used to prefill the dialog or be shown in some other way to the user. On return, this parameter should contain the username entered by the user. This field can only be changed if the #ONLY_PASSWORD flag is not set.
	 */
	var username : AString;
}
