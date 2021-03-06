package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUpdateItem") extern class NsIUpdateItem extends NsISupports
{
	static inline var TYPE_APP = 0x01;
	static inline var TYPE_EXTENSION = 0x02;
	static inline var TYPE_THEME = 0x04;
	static inline var TYPE_LOCALE = 0x08;
	static inline var TYPE_MULTI_XPI = 0x20;
	static inline var TYPE_ANY = 0xff;
	
	/**
	 * The URL of the icon that can be shown for this item. Read only.
	 */
	var iconURL : AString;
	/**
	 * The GUID of the item. Read only.
	 */
	var id : AString;
	/**
	 * The name of the Install Location where this item is installed. Read only.
	 */
	var installLocationKey : AString;
	/**
	 * The maximum version of the application that this item works with, in FVF format. Read only.
	 */
	var maxAppVersion : AString;
	/**
	 * The minimum version of the application that this item works with, in FVF format. Read only.
	 */
	var minAppVersion : AString;
	/**
	 * The name of this item. Read only.
	 */
	var name : AString;
	/**
	 * Returns a JS Object source representing an nsIUpdateItem. Read only.
	 */
	var objectSource : AString;
	/**
	 * The target application ID used for checking compatibility for this item.
	 * Note: Add-ons can specify a targetApplication id of toolkit@mozilla.org in their install manifest for compatibility with all apps using a specific release of the toolkit. Read only.
	 */
	var targetAppID : AString;
	/**
	 * The type of this item. Read only.
	 */
	var type : Long;
	/**
	 * The public key to verify updates for this item. This must be the public part of the key that was used to sign update manifests for this add-on. Read only.
	 */
	var updateKey : AString;
	/**
	 * The URL of the update RDF file for this item. Read only.
	 */
	var updateRDF : AString;
	/**
	 * The Version of the item, in FVF format. Read only.
	 */
	var version : AString;
	/**
	 * The string Hash for the XPI file. Can be null and if supplied must be in the format of "type:hash" (see the types in nsICryptoHash and nsIXPInstallManager.initManagerWithHashes(). Read only.
	 */
	var xpiHash : AString;
	/**
	 * The URL of the XPI where this item can be downloaded. Read only.
	 */
	var xpiURL : AString;
	
	function init(id:AString, version:AString, installLocationKey:AString, minAppVersion:AString, maxAppVersion:AString, name:AString, downloadURL:AString, xpiHash:AString, iconURL:AString, updateURL:AString, updateKey:AString, type:Long, targetAppID:AString) : Void;
}
