package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMWindow2") extern class NsIDOMWindow2
{
	/**
	 * The application cache object for this window. Read only.
	 */
	var applicationCache : NsIDOMOfflineResourceList;
	/**
	 * The window root for this window. This is useful for connecting event listeners to this window as well as every other window nested in that window root. Not accessible from scripts. Read only.
	 */
	var windowRoot : NsIDOMEventTarget;
}
