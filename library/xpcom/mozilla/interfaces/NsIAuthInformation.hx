package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAuthInformation") extern class NsIAuthInformation extends NsISupports
{
	/**
	 * This dialog belongs to a network host.
	 */
	static inline var AUTH_HOST = 1;
	/**
	 * This dialog belongs to a proxy.
	 */
	static inline var AUTH_PROXY = 2;
	/**
	 * This dialog needs domain information. The user interface should show a domain field, prefilled with the domain attributes value.
	 */
	static inline var NEED_DOMAIN = 4;
	/**
	 *  <p>This dialog only asks for password information. Authentication prompts SHOULD NOT show a username field. Attempts to change the username field will have no effect. <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAuthPrompt2" title="">nsIAuthPrompt2</a></code> implementations should, however, show its initial value to the user in some form. For example, a paragraph in the dialog might say "Please enter your password for user jsmith at server intranet".</p> This flag is mutually exclusive with #NEED_DOMAIN.
	 */
	static inline var ONLY_PASSWORD = 8;
	/**
	 * We have already tried to log in for this channel (with auth values from a previous promptAuth call), but it failed, so we now ask the user to provide a new, correct login. 
	 */
	static inline var PREVIOUS_FAILED = 16;
	
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
