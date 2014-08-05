package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICRLInfo") extern class NsICRLInfo extends NsISupports
{
	/**
	 * The URL this CRL was last fetched from. Read only.
	 */
	var lastFetchURL : AUTF8String;
	/**
	 * The time this CRL was created at. Read only.
	 */
	var lastUpdate : PRTime;
	/**
	 * lastUpdate formatted as a human readable string formatted according to the environment locale. Read only.
	 */
	var lastUpdateLocale : AString;
	/**
	 * The key identifying the CRL in the database. Read only.
	 */
	var nameInDb : AString;
	/**
	 * The time the suggested next update for this CRL. Read only.
	 */
	var nextUpdate : PRTime;
	/**
	 * nextUpdate formatted as a human readable string formatted according to the environment locale. Read only.
	 */
	var nextUpdateLocale : AString;
	/**
	 * The issuing CA's organization. Read only.
	 */
	var organization : AString;
	/**
	 * The issuing CA's organizational unit. Read only.
	 */
	var organizationalUnit : AString;
}
