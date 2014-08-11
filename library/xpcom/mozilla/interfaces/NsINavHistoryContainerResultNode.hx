package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINavHistoryContainerResultNode") extern class NsINavHistoryContainerResultNode extends NsINavHistoryResultNode
{
	/**
	 * The container is closed.
	 */
	static inline var STATE_CLOSED   = 0;
	/**
	 * The container has been opened asynchronously, but is still loading and is not all the way opened yet.
	 */
	static inline var STATE_LOADING   = 1;
	/**
	 * The container is open.
	 */
	static inline var STATE_OPENED   = 2;
	
	/**
	 * The number of child nodes; accessing this throws an NS_ERROR_NOT_AVAILABLE exception of containerOpen is false. Read only.
	 */
	var childCount : ULong;
	/**
	 * false if the node's list of children can be modified (by adding or removing children, or rearranging them), or true if the user interface should not allow the list of children to be altered. Read-only. This is false for bookmark folder nodes unless the setFolderReadOnly() method has been called to specifically make the folder read-only. It's true for non-folder nodes. If this container is a remote container, this flag may be redefined by the remote container provider. Read-only.
	 */
	var childrenReadOnly : Bool;
	/**
	 * Set this to true to allow descent into this container. When closed, attempting to call getChild() or access childCount results in an error. When you're done reading the container's children, set this to false. For HOST and DAY groupings, doing this has no performance cost since the children have already been computed. For queries and bookmark folders, however, being open means they must keep themselves up-to-date by listening for updates and re-querying as needed.
	 */
	var containerOpen : Bool;
	/**
	 * A string representing the dynamic container API service responsible for this container. Accessing this throws an exception if the node isn't a dynamic container. Read only.
	 */
	var dynamicContainerType : AUTF8String;
	/**
	 * Indicates whether or not the node can have children, and may be used whether the container is open or closed. When the container is closed, the result is an exact answer if the node can be populated easily (for example, for bookmark folders). If it can't be populated easily (for complex history queries, for example), the result is always true. When the container is open, the result is always accurate. This value is intended to be used to see if the "+" should be drawn next to a tree item, indicating that the item can be opened. Read-only.
	 */
	var hasChildren : Bool;
	/**
	 * A string representing the remote container service API that is responsible for this container. If there is no such API, this value is an empty string. Read only. The container may be a RESULT_TYPE_REMOTE_CONTAINER node that has been dynamically generated by the remote container API, or a bookmark folder (RESULT_TYPE_FOLDER) for which some service (such as livemarks) has registered to provide certain operations.
	 * Obsolete since Gecko 1.9
	 */
	var remoteContainerType  : AUTF8String;
	/**
	 * The current state of the container. This is one of the state constants.
	 */
	var state : UShort;
	
	function findNodeByDetails(aURIString:AUTF8String, aTime:PRTime, aItemId:LongLong, aRecursive:Bool) : NsINavHistoryResultNode;
	function getChild(aIndex:ULong) : NsINavHistoryResultNode;
	function getChildIndex(aNode:NsINavHistoryResultNode) : ULong;
}
