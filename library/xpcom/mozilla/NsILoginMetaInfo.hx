package xpcom.mozilla;

import xpcom.types.*;

@:native("nsILoginMetaInfo") extern class NsILoginMetaInfo extends NsISupports
{
	/**
	 * The GUID to uniquely identify the login. This can be any arbitrary string, but a format as created by nsIUUIDGenerator is recommended. For example, "{d4e1a1f6-5ea0-40ee-bff5-da57982f21cf}"
	 */
	var guid : AString;
	/**
	 * The time, in Unix Epoch milliseconds, when the login was first created.
	 */
	var timeCreated : ULongLong;
	/**
	 * The time, in Unix Epoch milliseconds, when the login was last submitted in a form or used to begin an HTTP auth session.
	 */
	var timeLastUsed : ULongLong;
	/**
	 * The time, in Unix Epoch milliseconds, when the login's password was last modified.
	 */
	var timePasswordChanged : ULongLong;
	/**
	 * The number of times the login was submitted in a form or used to begin an HTTP auth session.
	 */
	var timesUsed : ULong;
}
