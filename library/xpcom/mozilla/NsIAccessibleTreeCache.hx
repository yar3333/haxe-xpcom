package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleTreeCache") extern class NsIAccessibleTreeCache extends NsISupports
{
	function getCachedTreeitemAccessible(aRow:Long, aColumn:NsITreeColumn) : NsIAccessible;
	function invalidateCache(aRow:Long, aCount:Long) : Void;
	function treeViewChanged() : Void;
	function treeViewInvalidated(aStartRow:Long, aEndRow:Long, aStartCol:Long, aEndCol:Long) : Void;
}
