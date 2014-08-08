package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINavHistoryQueryResultNode") extern class NsINavHistoryQueryResultNode extends NsINavHistoryContainerResultNode
{
	/**
	 * For both simple folder nodes and simple-folder-query nodes, this is set to the concrete itemId of the folder. Otherwise, this is set to -1. Read only.
	 */
	var folderItemId : LongLong;
	/**
	 * The options that group the node's children; only valid for RESULT_TYPE_QUERY nodes. Read only.
	 */
	var queryOptions : NsINavHistoryQueryOptions;
	
	function getQueries(?queryCount:{value:ULong}, queries:Array<NsINavHistoryQuery>) : Void;
}
