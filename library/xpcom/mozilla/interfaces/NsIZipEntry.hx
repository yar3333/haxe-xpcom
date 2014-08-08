package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIZipEntry") extern class NsIZipEntry extends NsISupports
{
	/**
	 * The type of compression used for the item. The possible values and their meanings are defined in the zip file specification at .ZIP Application Note Support. Read only.
	 */
	var compression : UShort;
	/**
	 * The CRC-32 hash of the file in the entry. Read only.
	 */
	var CRC32 : ULong;
	/**
	 * True if the name of the entry ends with '/' and false otherwise. Read only.
	 */
	var isDirectory : Bool;
	/**
	 * Use this attribute to determine whether this item is an actual zip entry or is one synthesized for part of a real entry's path. A synthesized entry represents a directory within the zip file which has no corresponding entry within the zip file. For example, the entry for the directory foo/ in a zip containing exactly one entry for foo/bar.txt is synthetic. If the zip file contains an actual entry for a directory, this attribute will be false for the nsIZipEntry for that directory. It is impossible for a file to be synthetic. Read only.
	 */
	var isSynthetic : Bool;
	/**
	 * The time at which this item was last modified. Read only.
	 */
	var lastModifiedTime : PRTime;
	/**
	 * Read only. Obsolete since Gecko 1.9
	 */
	var name : String;
	/**
	 * The uncompressed size of the data in the item. Read only.
	 */
	var realSize : ULong;
	/**
	 * The compressed size of the data in the item. Read only.
	 */
	var size : ULong;
}
