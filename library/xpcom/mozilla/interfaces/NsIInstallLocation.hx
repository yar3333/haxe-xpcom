package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIInstallLocation") extern class NsIInstallLocation extends NsISupports
{
	static inline var PRIORITY_APP_PROFILE = 0;
	static inline var PRIORITY_APP_SYSTEM_USER = 10;
	static inline var PRIORITY_XRE_SYSTEM_USER = 100;
	static inline var PRIORITY_APP_SYSTEM_GLOBAL = 1000;
	static inline var PRIORITY_XRE_SYSTEM_GLOBAL = 10000;
	
	/**
	 * Whether or not the user can write to the Install Location with the current access privileges. This is different from restricted because it's not whether or not the location *might* be restricted, it's whether or not it actually *is* restricted right now. Read only.
	 */
	var canAccess : Bool;
	/**
	 * An enumeration of nsIFiles for:  Locations that contain items Potential dropped-in XPIs  Note: This enumeration resolves Text Links to the directories they refer to. Read only.
	 */
	var itemLocations : NsIDirectoryEnumerator;
	/**
	 * The file system location where items live. Items can be dropped in at this location. Can be null for Install Locations that don't have a file system presence. Note: This is a clone of the actual location which the caller can modify freely. Read only.
	 */
	var location : NsIFile;
	/**
	 * The string identifier of this Install Location. Read only.
	 */
	var name : AString;
	/**
	 * The priority level of this Install Location in loading. Read only.
	 */
	var priority : Long;
	/**
	 * Whether or not this Install Location is on an area of the file system that could be restricted on a restricted-access account, regardless of whether or not the location is restricted with the current user privileges. Read only.
	 */
	var restricted : Bool;
	
	function getIDForLocation(file:NsIFile) : AString;
	function getItemFile(id:AString, path:AString) : NsIFile;
	function getItemLocation(id:AString) : NsIFile;
	function getStageFile(id:AString) : NsIFile;
	function itemIsManagedIndependently(id:AString) : Bool;
	function removeFile(file:NsIFile) : Void;
	function stageFile(file:NsIFile, id:AString) : NsIFile;
}
