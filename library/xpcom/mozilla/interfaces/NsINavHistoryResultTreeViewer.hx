package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINavHistoryResultTreeViewer") extern class NsINavHistoryResultTreeViewer extends NsINavHistoryResultObserver
{
	/**
	 * Returned by <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsINavHistoryResultTreeViewer#treeIndexForNode()">treeIndexForNode()</a></code> when the requested node isn't visible (such as when its parent is collapsed). Also returned if there is no tree attached.
	 */
	static inline var INDEX_INVISIBLE = 0xffffffff;
	
	/**
	 * Controls whether duplicate adjacent elements are collapsed into a single item in the tree. This prevents you from seeing multiple entries for things when you have selected to get visits. When you sort by date, the multiple entries will then appear because they will be separated (unless you clicked reload a bunch of times in a row). If you know you'll only ever want one entry per site, you should ask for URIs back instead of visits so it will be more efficient. Default = true. Changing this value is somewhat heavyweight since it will force a tree refresh. Obsolete since Gecko 1.9
	 */
	var collapseDuplicates : Bool;
	/**
	 * This tells you how many items are in the flattened list of results, that is how many rows are in this tree right now. The tree adaptor will also QI to nsITreeView, and this will be the same as nsITreeView.rowCount. This is only valid when a tree is attached, the result will be 0 otherwise. Read only. Obsolete since Gecko 1.9
	 */
	var flatItemCount : PRUint32;
	
	function nodeForTreeIndex(aIndex:ULong) : NsINavHistoryResultNode;
	function treeIndexForNode(aNode:NsINavHistoryResultNode) : ULong;
}
