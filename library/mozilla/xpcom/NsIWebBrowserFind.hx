package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIWebBrowserFind") extern class NsIWebBrowserFind extends NsISupports
{
	/**
	 * Whether to match entire words only. Default is false.
	 */
	var entireWord : Bool;
	/**
	 * Whether to find backwards (towards the beginning of the document). Default is false (search forward).
	 */
	var findBackwards : Bool;
	/**
	 * Whether to match case (case sensitive) when searching. Default is false.
	 */
	var matchCase : Bool;
	/**
	 * Whether to search through all frames in the content area. Default is true.
	 * Note: That you can control whether the search propagates into child or parent frames explicitly using nsIWebBrowserFindInFrames, but if one, but not both, of searchSubframes and searchParentFrames are set, this returns false.
	 */
	var searchFrames : Bool;
	/**
	 * The string to search for. This must be non-empty to search.
	 */
	var searchString : Wstring;
	/**
	 * Whether the search wraps around to the start (or end) of the document if no match was found between the current position and the end (or beginning). Works correctly when searching backwards. Default is false.
	 */
	var wrapFind : Bool;
}
