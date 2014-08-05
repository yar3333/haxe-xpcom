package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentPrefService") extern class NsIContentPrefService
{
	/**
	 * The database connection to the content preferences database. Useful for accessing and manipulating preferences in ways that are caller-specific or for which there is not yet a generic method, although generic functionality useful to multiple callers should generally be added to this unfrozen interface. Also useful for testing the database creation and migration code. Read only.
	 */
	var DBConnection : MozIStorageConnection;
	/**
	 * The component that the service uses to determine the groups to which URIs belong. By default, this is the "hostname grouper," which groups URIs by full hostname (in otherwords, by site). Read only.
	 */
	var grouper : NsIContentURIGrouper;
}
