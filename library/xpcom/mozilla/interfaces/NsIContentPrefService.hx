package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIContentPrefService") extern class NsIContentPrefService extends NsISupports
{
	public static inline function getService() : NsIContentPrefService
	{
		return xpcom.Components.classes[cast "@mozilla.org/content-pref/service;1"].getService(NsIContentPrefService);
	}
	
	/**
	 * The database connection to the content preferences database. Useful for accessing and manipulating preferences in ways that are caller-specific or for which there is not yet a generic method, although generic functionality useful to multiple callers should generally be added to this unfrozen interface. Also useful for testing the database creation and migration code. Read only.
	 */
	var DBConnection : MozIStorageConnection;
	/**
	 * The component that the service uses to determine the groups to which URIs belong. By default, this is the "hostname grouper," which groups URIs by full hostname (in otherwords, by site). Read only.
	 */
	var grouper : NsIContentURIGrouper;
	
	function addObserver(aName:AString, aObserver:NsIContentPrefObserver) : Void;
	function getPref(aGroup:NsIVariant, aName:AString, ?aCallback:NsIContentPrefCallback) : NsIVariant;
	function getPrefs(aGroup:NsIVariant) : NsIPropertyBag2;
	function getPrefsByName(aName:AString) : NsIPropertyBag2;
	function hasPref(aGroup:NsIVariant, aName:AString) : Bool;
	function removeGroupedPrefs() : Void;
	function removeObserver(aName:AString, aObserver:NsIContentPrefObserver) : Void;
	function removePref(aGroup:NsIVariant, aName:AString) : Void;
	function removePrefsByName(aName:AString) : Void;
	function setPref(aGroup:NsIVariant, aName:AString, aValue:NsIVariant) : Void;
}
