package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITransportSecurityInfo") extern class NsITransportSecurityInfo extends NsISupports
{
	/**
	 * Error message on connection failure. Read only.
	 */
	var errorMessage : Wstring;
	/**
	 * A flag detailing the security state of the connection. The possible values are defined in nsIWebProgressListener. Read only.
	 */
	var securityState : ULong;
	/**
	 * For secure connections (SSL) gives the common name (CN) of the certifying authority. Read only.
	 */
	var shortSecurityDescription : Wstring;
}
