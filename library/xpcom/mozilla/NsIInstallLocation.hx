package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIInstallLocation") extern class NsIInstallLocation extends NsISupports
{
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
}
