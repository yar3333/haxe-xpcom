package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINavBookmarkObserver") extern class NsINavBookmarkObserver extends NsISupports
{
	function onBeforeItemRemoved(aItemId:LongLong, aItemType:UShort, aParentId:LongLong, aGUID:ACString, aParentGUID:ACString) : Void;
	function onBeginUpdateBatch() : Void;
	function onEndUpdateBatch() : Void;
	function onFolderAdded(folder:PRInt64, parent:PRInt64, index:PRInt32) : Void;
	function onFolderChanged(folder:PRInt64, property:ACString) : Void;
	function onFolderMoved(folder:PRInt64, oldParent:PRInt64, oldIndex:PRInt32, newParent:PRInt64, newIndex:PRInt32) : Void;
	function onFolderRemoved(folder:PRInt64, parent:PRInt64, index:PRInt32) : Void;
	function onItemAdded(aItemId:LongLong, aParentId:LongLong, aIndex:Long, aItemType:UShort, aURI:NsIURI, aTitle:AUTF8String, aDateAdded:PRTime, aGUID:ACString, aParentGUID:ACString) : Void;
	function onItemChanged(aItemId:LongLong, aProperty:ACString, aIsAnnotationProperty:Bool, aNewValue:AUTF8String, aLastModified:PRTime, aItemType:UShort, aParentId:LongLong, aGUID:ACString, aParentGUID:ACString) : Void;
	function onItemMoved(aItemId:LongLong, aOldParentId:LongLong, aOldIndex:Long, aNewParentId:LongLong, aNewIndex:Long, aItemType:UShort, aGUID:ACString, aOldParentGUID:ACString, aNewParentGUID:ACString) : Void;
	function onItemRemoved(aItemId:LongLong, aParentId:LongLong, aIndex:Long, aItemType:UShort, aURI:NsIURI, aGUID:ACString, aParentGUID:ACString) : Void;
	function onItemReplaced(folder:PRInt64, item:NsIURI, newItem:NsIURI) : Void;
	function onItemVisited(aItemId:LongLong, aVisitId:LongLong, aTime:PRTime, aTransitionType:ULong, aURI:NsIURI, aParentId:LongLong, aGUID:ACString, aParentGUID:ACString) : Void;
	function onSeparatorAdded(parent:PRInt64, index:PRInt32) : Void;
	function onSeparatorRemoved(parent:PRInt64, index:PRInt32) : Void;
}
