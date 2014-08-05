package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDynamicContainer") extern class NsIDynamicContainer extends NsISupports
{
	function onContainerMoved(aItemId:LongLong, aNewParent:LongLong, aNewIndex:Long) : Void;
	function onContainerNodeClosed(aContainer:NsINavHistoryContainerResultNode) : Void;
	function onContainerNodeOpening(aContainer:NsINavHistoryContainerResultNode, aOptions:NsINavHistoryQueryOptions) : Void;
	function onContainerRemoving(aItemId:LongLong) : Void;
}
