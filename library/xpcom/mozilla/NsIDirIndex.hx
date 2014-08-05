package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDirIndex") extern class NsIDirIndex extends NsISupports
{
	/**
	 * The content type; may be null if it is unknown. Unspecified for directories.
	 */
	var contentType : String;
	/**
	 * A description for the filename, which should be displayed by a viewer.
	 */
	var description : Wstring;
	/**
	 * Last-modified time in seconds-since-epoch. If the last modified time is unknown, this value is -1.
	 */
	var lastModified : PRTime;
	/**
	 * The fully qualified filename, expressed as a URI. This is encoded with the encoding specified in the nsIDirIndexParser, and is also escaped.
	 */
	var location : String;
	/**
	 * File size; if the size is unknown, this value is -1.
	 */
	var size : LongLong;
	/**
	 * The type of the entry; one of the TYPE_* constants.
	 */
	var type : ULong;
}
