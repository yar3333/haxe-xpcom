package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleRetrieval") extern class NsIAccessibleRetrieval extends NsISupports
{
	function getAccessibleFor(aNode:NsIDOMNode) : NsIAccessible;
	function getAccessibleInShell(aNode:NsIDOMNode, aPresShell:NsIPresShell) : NsIAccessible;
	function getAccessibleInWeakShell(aNode:NsIDOMNode, aPresShell:NsIWeakReference) : NsIAccessible;
	function getAccessibleInWindow(aNode:NsIDOMNode, aDOMWin:NsIDOMWindow) : NsIAccessible;
	function getApplicationAccessible() : NsIAccessible;
	function getAttachedAccessibleFor(aNode:NsIDOMNode) : NsIAccessible;
	function getCachedAccessible(aNode:NsIDOMNode, aShell:NsIWeakReference) : NsIAccessible;
	function getCachedAccessNode(aNode:NsIDOMNode, aShell:NsIWeakReference) : NsIAccessNode;
	function getRelevantContentNodeFor(aNode:NsIDOMNode) : NsIDOMNode;
	function getStringEventType(aEventType:ULong) : AString;
	function getStringRelationType(aRelationType:ULong) : AString;
	function getStringRole(aRole:ULong) : AString;
	function getStringStates(aStates:ULong, aExtraStates:ULong) : NsIDOMDOMStringList;
}
