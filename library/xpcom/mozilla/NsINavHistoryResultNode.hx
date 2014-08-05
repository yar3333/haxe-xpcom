package xpcom.mozilla;

import xpcom.types.*;

@:native("nsINavHistoryResultNode") extern class NsINavHistoryResultNode extends NsISupports
{
	/**
	 * nsINavHistoryResultNode.
	 */
	static inline var RESULT_TYPE_URI = 0;
	/**
	 * <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryVisitResultNode" title="">nsINavHistoryVisitResultNode</a></code>.
	 */
	static inline var RESULT_TYPE_VISIT = 1;
	/**
	 * <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryFullVisitResultNode" title="">nsINavHistoryFullVisitResultNode</a></code>.
	 */
	static inline var RESULT_TYPE_FULL_VISIT = 2;
	/**
	 * <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryContainerResultNode" title="">nsINavHistoryContainerResultNode</a></code>.
	 */
	static inline var RESULT_TYPE_DYNAMIC_CONTAINER = 4;
	/**
	 * <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryQueryResultNode" title="">nsINavHistoryQueryResultNode</a></code>.
	 */
	static inline var RESULT_TYPE_QUERY = 5;
	/**
	 * <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryQueryResultNode" title="">nsINavHistoryQueryResultNode</a></code>.
	 */
	static inline var RESULT_TYPE_FOLDER = 6;
	/**
	 * nsINavHistoryResultNode.
	 */
	static inline var RESULT_TYPE_SEPARATOR = 7;
	/**
	 * <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryQueryResultNode" title="">nsINavHistoryQueryResultNode</a></code>.
	 */
	static inline var RESULT_TYPE_FOLDER_SHORTCUT = 9;
	
	/**
	 * Total number of times the URI has been accessed. For hosts, this is the total number of the children under it, rather than the total number of times the host has been accessed (getting that information would require an additional query, so for performance reasons that information isn't given by default). Read only.
	 */
	var accessCount : ULong;
	/**
	 * When this item is in a bookmark folder (its parent is of type folder), this is the index into that folder at which this node resides. These indices start at 0 and increase in the order at which the nodes appear in the bookmark folder. For items that are not in a bookmark folder, this value is -1. Read only.
	 */
	var bookmarkIndex : Long;
	/**
	 * If the node is an item (bookmark, folder, or separator), this value is the time at which the item was created. For other nodes, this value is 0. Read only.
	 */
	var dateAdded : PRTime;
	/**
	 * This URI can be used as an image source URI and will give you the favicon for the page. It is not the actual URI of the favicon, but, rather, is something that will resolve to the actual image. In most cases, this is an annotation URI that will query the favicon service. If the entry doesn't have a favicon, this is the chrome URI of the default favicon. If the favicon originally lived in chrome, this will be the original chrome URI of the icon. Read only. Note: Prior to Gecko 1.9.2, this was an nsIURI.
	 */
	var icon : AUTF8String;
	/**
	 * This is the number of levels between this node and the top of the hierarchy. The members of result.children have an indentLevel value of zero, their children have an indentLevel of 1, and so forth. The indent level of the root node is set to -1. Read only.
	 */
	var indentLevel : Long;
	/**
	 * If the node is an item (bookmark, folder, or separator), this value is the row ID of that bookmark in the database. For other nodes, this value is set to -1. Read only.
	 */
	var itemId : LongLong;
	/**
	 * If the node is an item (bookmark, folder, or separator), this value is the time at which the item was last modified. For other nodes, this value is 0. Note: When an item is added lastModified is set to the same value as dateAdded. Read only.
	 */
	var lastModified : PRTime;
	/**
	 * Identifies the parent result node in the result set. The value is null for top level nodes. Read only.
	 */
	var parent : NsINavHistoryContainerResultNode;
	/**
	 * The history-result to which this node belongs. Read only.
	 */
	var parentResult : NsINavHistoryResult;
	/**
	 * You can use this to associate temporary information with the result node. This property bag is associated with the result node and is not persisted in any way. Read only. Obsolete since Gecko 2.0
	 */
	var propertyBag : NsIWritablePropertyBag;
	/**
	 * For uri nodes, this is a sorted list of the tags, delimited with commans, for the uri represented by this node. Otherwise this is an empty string. Read only.
	 */
	var tags : AString;
	/**
	 * The time at which the user accessed the page. Read only. For visits, this is the exact time at which the page visit occurred. For URIs, this is the most recent time at which the URI was visited. Even if you ask for all URIs for a given date range long ago, this might contain today's date if the URI was visited today. For hosts, or other node types with children, this is the most recent access time for any of the children. For days, this is midnight on the morning of the day in question in UTC.
	 */
	var time : PRTime;
	/**
	 * Title of the web page or of the node's grouping (day, host, folder, and so on.). Read only.
	 */
	var title : AUTF8String;
	/**
	 * Identifies the type of node. You can use QueryInterface to access the corresponding specialized result node interface. Read only.
	 */
	var type : ULong;
	/**
	 * The URI of the resource represented by the node. For visits and URLs, this is the URL of the page. For folders and queries, this is the place: URI of the corresponding folder or query. This may be empty for other types of objects, like host containers. Read only.
	 */
	var uri : AUTF8String;
	/**
	 * Value with undefined meaning for use by the view. Its initial value will be -1. The result implementation treats nodes with this property set to -1 as invisible! View-implementations may use this value to track the node index in the view, for example the tree view uses this value to indicate the row in the tree that this node is at. Other views may choose not to use this, but should inititalize this value to anything but -1 for visible nodes. Obsolete since Gecko 1.9.2
	 */
	var viewIndex : Long;
}
