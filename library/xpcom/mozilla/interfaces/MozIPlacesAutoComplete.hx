package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIPlacesAutoComplete") extern class MozIPlacesAutoComplete extends NsISupports
{
	/**
	 * Match anywhere in each searchable term.
	 */
	static inline var MATCH_ANYWHERE = 0;
	/**
	 * Match first on word boundaries, and if we do not get enough results, then match anywhere in each searchable term.
	 */
	static inline var MATCH_BOUNDARY_ANYWHERE = 1;
	/**
	 * Match on word boundaries in each searchable term.
	 */
	static inline var MATCH_BOUNDARY = 2;
	/**
	 * Match only the beginning of each search term.
	 */
	static inline var MATCH_BEGINNING = 3;
	/**
	 * Search through history.
	 */
	static inline var BEHAVIOR_HISTORY = 1 << 0;
	/**
	 * Search though bookmarks.
	 */
	static inline var BEHAVIOR_BOOKMARK = 1 << 1;
	/**
	 * Search through tags.
	 */
	static inline var BEHAVIOR_TAG = 1 << 2;
	/**
	 * Search the title of pages.
	 */
	static inline var BEHAVIOR_TITLE = 1 << 3;
	/**
	 * Search the URL of pages.
	 */
	static inline var BEHAVIOR_URL = 1 << 4;
	/**
	 * Search for typed pages.
	 */
	static inline var BEHAVIOR_TYPED = 1 << 5;
	/**
	 * Search javascript: URLs.
	 */
	static inline var BEHAVIOR_JAVASCRIPT = 1 << 6;
	/**
	 * Search for pages that have been marked as being opened, such as a tab in a tabbrowser. 
	 */
	static inline var BEHAVIOR_OPENPAGE = 1 << 7;
	
	function registerOpenPage(aURI:NsIURI) : Void;
	function unregisterOpenPage(aURI:NsIURI) : Void;
}
