package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINavHistoryQueryOptions") extern class NsINavHistoryQueryOptions extends NsISupports
{
	/**
	 * For bookmark items, this constant means sort by the natural bookmark order.
	 */
	static inline var SORT_BY_NONE = 0;
	/**
	 * Sort by the ascending title order.
	 */
	static inline var SORT_BY_TITLE_ASCENDING = 1;
	/**
	 * Sort by the descending title order.
	 */
	static inline var SORT_BY_TITLE_DESCENDING = 2;
	/**
	 * Sort by the ascending date order.
	 */
	static inline var SORT_BY_DATE_ASCENDING = 3;
	/**
	 * Sort by the descending date order.
	 */
	static inline var SORT_BY_DATE_DESCENDING = 4;
	/**
	 * Sort by the ascending URI order.
	 */
	static inline var SORT_BY_URI_ASCENDING = 5;
	/**
	 * Sort by the descending URI order.
	 */
	static inline var SORT_BY_URI_DESCENDING = 6;
	/**
	 * Sort by the ascending visit count order.
	 */
	static inline var SORT_BY_VISITCOUNT_ASCENDING = 7;
	/**
	 * Sort by the descending visit count order.
	 */
	static inline var SORT_BY_VISITCOUNT_DESCENDING = 8;
	/**
	 * Sort by the ascending keyword order.
	 */
	static inline var SORT_BY_KEYWORD_ASCENDING = 9;
	/**
	 * Sort by the descending keyword order.
	 */
	static inline var SORT_BY_KEYWORD_DESCENDING = 10;
	/**
	 * Sort by the ascending added date order.
	 */
	static inline var SORT_BY_DATEADDED_ASCENDING = 11;
	/**
	 * Sort by the descending added date order.
	 */
	static inline var SORT_BY_DATEADDED_DESCENDING = 12;
	/**
	 * Sort by the ascending last modified order.
	 */
	static inline var SORT_BY_LASTMODIFIED_ASCENDING = 13;
	/**
	 * Sort by the descending last modified order.
	 */
	static inline var SORT_BY_LASTMODIFIED_DESCENDING = 14;
	/**
	 * Sort by the ascending tags order.
	 */
	static inline var SORT_BY_TAGS_ASCENDING = 17;
	/**
	 * Sort by the descending tags order.
	 */
	static inline var SORT_BY_TAGS_DESCENDING = 18;
	/**
	 * Sort by the ascending annotation order.
	 */
	static inline var SORT_BY_ANNOTATION_ASCENDING = 19;
	/**
	 * Sort by the descending annotation order.
	 */
	static inline var SORT_BY_ANNOTATION_DESCENDING = 20;
	/**
	 * Sort by ascending frecency order.
	 */
	static inline var SORT_BY_FRECENCY_ASCENDING  = 21;
	/**
	 * Sort by descending frecency order.
	 */
	static inline var SORT_BY_FRECENCY_DESCENDING  = 22;
	/**
	 * "URI" results, one for each URI visited in the range. Individual result nodes will be of type "URI".
	 */
	static inline var RESULTS_AS_URI = 0;
	/**
	 * "Visit" results, with one for each time a page was visited (this will often give you multiple results for one URI). Individual result nodes will have type "Visit".
	 */
	static inline var RESULTS_AS_VISIT = 1;
	/**
	 * <p>This is identical to RESULT_TYPE_VISIT except that individual result nodes will have type "FullVisit". This is used for the attributes that are not commonly accessed to save space in the common case (the lists can be very long).</p>
	 * <div class="note">
	 * <strong>Note:</strong> Supported only for QUERY_TYPE_HISTORY.</div>
	 */
	static inline var RESULTS_AS_FULL_VISIT = 2;
	/**
	 * <p>Returns <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryQueryResultNode" title="">nsINavHistoryQueryResultNode</a></code> nodes for each predefined date range where we had visits.</p>
	 * <div class="note">
	 * <strong>Note:</strong> Supported only for QUERY_TYPE_HISTORY.</div>
	 */
	static inline var RESULTS_AS_DATE_QUERY = 3;
	/**
	 * <p>Returns <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryQueryResultNode" title="">nsINavHistoryQueryResultNode</a></code> nodes for each site where we have visits.</p>
	 * <div class="note">
	 * <strong>Note:</strong> Supported only for QUERY_TYPE_HISTORY.</div>
	 */
	static inline var RESULTS_AS_SITE_QUERY = 4;
	/**
	 * <p>Returns <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryQueryResultNode" title="">nsINavHistoryQueryResultNode</a></code> nodes for each site where we have visits, grouped by date.</p>
	 * <div class="note">
	 * <strong>Note:</strong> Supported only for QUERY_TYPE_HISTORY.</div>
	 */
	static inline var RESULTS_AS_DATE_SITE_QUERY = 5;
	/**
	 * <p>Returns <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryQueryResultNode" title="">nsINavHistoryQueryResultNode</a></code> nodes for each tag. Each tag node is a RESULTS_AS_TAG_CONTENTS container defined as place:querytype=1&resultType=7&folder=tag_folder_id.</p>
	 * <div class="note">
	 * <strong>Note:</strong> Using this result type forces the query type to be QUERY_TYPE_BOOKMARKS.</div>
	 */
	static inline var RESULTS_AS_TAG_QUERY = 6;
	/**
	 * <p>Returns <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryResultNode" title="">nsINavHistoryResultNode</a></code> nodes for each bookmark contained into the defined tag. To specify the tag you need to add a folder=tag_folder_id to the query, and only one folder is allowed.</p>
	 * <div class="note">
	 * <strong>Note:</strong> Using this result type forces the query type to be QUERY_TYPE_BOOKMARKS. At this time, sorting methods are not supported; results will always be returned in reverse order of insertion.</div>
	 */
	static inline var RESULTS_AS_TAG_CONTENTS = 7;
	/**
	 * Query's type is history.
	 */
	static inline var QUERY_TYPE_HISTORY = 0;
	/**
	 * Query's type is bookmarks.
	 */
	static inline var QUERY_TYPE_BOOKMARKS = 1;
	/**
	 * Query's type is unified.
	 */
	static inline var QUERY_TYPE_UNIFIED = 2;
	/**
	 * Include both redirected-from and redirected-to pages in the results.
	 */
	static inline var REDIRECTS_MODE_ALL = 0;
	/**
	 * Include redirected-from pages but not redirected-to pages in the results.
	 */
	static inline var REDIRECTS_MODE_SOURCE = 1;
	/**
	 * Include redirected-to pages but not redirected-from pages in the results.
	 */
	static inline var REDIRECTS_MODE_TARGET = 2;
	
	/**
	 * If true, the query options are only applied to the containers.
	 */
	var applyOptionsToContainers : Bool;
	/**
	 * When true, the root container node generated by these options and all of its descendant containers are opened asynchronously if they support doing so. By default, this is false.
	 * Note: Currently, only bookmark folder containers support being opened asynchronously.
	 */
	var asyncEnabled : Bool;
	/**
	 * This option excludes items from a bookmarks query if the parent of the item has this annotation. An example is to exclude livemark items (parent folders have the "livemark/feedURI" annotation). Ignored for queries over history.
	 * Obsolete since Gecko 13.0
	 */
	var excludeItemIfParentHasAnnotation  : AUTF8String;
	/**
	 * This option excludes all URIs and separators from a bookmarks query. This would be used if you just wanted a list of bookmark folders and queries (such as the left pane of the places page). Ignored for queries over history. Defaults to false.
	 */
	var excludeItems : Bool;
	/**
	 * Set to true to exclude queries ("place:" URIs) from the query results. Simple folder queries (bookmark folder symlinks) will still be included. Defaults to false.
	 */
	var excludeQueries : Bool;
	/**
	 * Set to true to exclude read-only folders from the query results. This is designed for cases where you want to give the user the option of filing something into a list of folders. It only affects cases where the actual folder result node would appear in its parent folder and filters it out. It doesn't affect the query at all, and doesn't affect more complex queries (such as "folders with annotation X").
	 */
	var excludeReadOnlyFolders : Bool;
	/**
	 * When set, allows items with "place:" URIs to appear as containers, with the container's contents filled in from the stored query. If not set, these will appear as normal items. Doesn't do anything if excludeQueries is set. Defaults to false.
	 * Note that this has no effect on folder links, which are place: URIs returned by nsINavBookmarkService's getFolderURI method. These are always expanded and will appear as bookmark folders.
	 */
	var expandQueries : Bool;
	/**
	 * Most items in history are marked "hidden." Only toplevel pages that the user sees in the URL bar are not hidden. Hidden things include the content of iframes and all images on web pages. Normally, you don't want these things. If you do, set this flag and you'll get all items, even hidden ones. Does nothing for bookmark queries. Defaults to false.
	 */
	var includeHidden : Bool;
	/**
	 * This is the maximum number of results that you want. The query is exeucted, the results are sorted, and then the top maxResults results are taken and returned. Set to "0" (the default) to get all results.
	 * This does not work in conjunction with sorting by title. This is because sorting by title requires us to sort after using locale-sensetive sorting (as opposed to letting the database do it for us). Instead, we get the result ordered by date, pick the maxResult most recent ones, and then sort by title.
	 */
	var maxResults : Long;
	/**
	 * The type of search to use when querying the DB; This attribute is only honored by query nodes. It is silently ignored for simple folder queries. See Query type constants for possible values.
	 */
	var queryType : Short;
	/**
	 * Specifies how to handle redirects; see Redirects mode constants for details. The default value is REDIRECTS_MODE_ALL.
	 * Note: This option is only used on QUERY_TYPE_HISTORY.
	 */
	var redirectsMode : UShort;
	/**
	 * If a bookmark title is NULL (note, not empty), attempt to use the history title. It is set to false by default.
	 */
	var resolveNullBookmarkTitles : Bool;
	/**
	 * Sets the result type. See Result type constants for possible values.
	 */
	var resultType : Short;
	/**
	 * Separate/group history items based on session information. Only matters when sorting by date.
	 */
	var showSessions : Bool;
	/**
	 * The annotation to use in SORT_BY_ANNOTATION_* sorting modes.
	 */
	var sortingAnnotation : AUTF8String;
	/**
	 * The sorting annotation to use; see Sorting methods for possible values.
	 */
	var sortingMode : Short;
	
	function clone() : NsINavHistoryQueryOptions;
}
