package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMStorageWindow") extern class NsIDOMStorageWindow extends NsISupports
{
	/**
	 * Global storage, accessible by domain. Read only.
	 */
	var globalStorage : NsIDOMStorageList;
	/**
	 * Local storage for the current browsing context. Data stored in local storage may only be accessed from the same origin that inserted the data into storage in the first place. Read only.
	 */
	var localStorage : NsIDOMStorage;
	/**
	 * Indexed Databases for the current browsing context. Read only.
	 */
	var moz_indexedDB : NsIIDBFactory;
	/**
	 * Session storage for the current browsing context. Data stored in session storage may be accessed by any site in the browsing context. Read only.
	 */
	var sessionStorage : NsIDOMStorage;
}
