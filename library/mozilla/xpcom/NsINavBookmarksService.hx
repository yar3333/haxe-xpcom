package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsINavBookmarksService") extern class NsINavBookmarksService extends NsISupports
{
	/**
	 * The item ID of the Bookmarks Menu folder. Read only. Renamed from bookmarksRoot in Gecko 1.9
	 */
	var bookmarksMenuFolder : LongLong;
	/**
	 * The item ID of the top-level folder that contains bookmarks, tags and all other Places data. This contains administrative data as well as user data, and is therefore not recommended for use in queries. Read only.
	 */
	var placesRoot : LongLong;
	/**
	 * The item ID of the top-level folder that contains the tag "folders". Read only. Renamed from tagRoot in Gecko 1.9
	 */
	var tagsFolder : LongLong;
	/**
	 * The item ID of the personal toolbar folder. Read only. Renamed from toolbarRoot in Gecko 1.9
	 */
	var toolbarFolder : LongLong;
	/**
	 * The item ID of the Unfiled Bookmarks folder. Read only.
	 */
	var unfiledBookmarksFolder : LongLong;
}
