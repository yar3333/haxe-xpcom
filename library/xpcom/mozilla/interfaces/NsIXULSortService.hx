package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXULSortService") extern class NsIXULSortService extends NsISupports
{
	static inline var SORT_COMPARECASE = 0x0001;
	static inline var SORT_INTEGER = 0x0100;
	
	function insertContainerNode(db:NsIRDFCompositeDataSource, sortStatePtr:NsRDFSortState, root:NsIContent, trueParent:NsIContent, container:NsIContent, node:NsIContent, aNotify:Bool) : Void;
	function sort(aNode:NsIDOMNode, aSortKey:AString, aSortHints:AString) : Void;
}
