package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDynamicContainer") extern class NsIDynamicContainer extends NsISupports
{
	function onContainerMoved(aItemId:LongLong, aNewParent:LongLong, aNewIndex:Long) : Void;
	function onContainerNodeClosed(aContainer:NsINavHistoryContainerResultNode) : Void;
	function onContainerNodeOpening(aContainer:NsINavHistoryContainerResultNode, aOptions:NsINavHistoryQueryOptions) : Void;
	function onContainerRemoving(aItemId:LongLong) : Void;
}
