package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISelection") extern class NsISelection extends NsISupports
{
	/**
	 * Returns the node in which the selection begins. Read only.
	 */
	var anchorNode : NsIDOMNode;
	/**
	 * The offset within the (text) node where the selection begins. Read only.
	 */
	var anchorOffset : Long;
	/**
	 * Returns the node in which the selection ends. Read only.
	 */
	var focusNode : NsIDOMNode;
	/**
	 * The offset within the (text) node where the selection ends. Read only.
	 */
	var focusOffset : Long;
	/**
	 * Indicates if the selection is collapsed() or not. Read only.
	 */
	var isCollapsed : Bool;
	/**
	 * Returns the number of ranges in the selection. Read only.
	 */
	var rangeCount : Long;
	
	function addRange(range:NsIDOMRange) : Void;
	function collapse(parentNode:NsIDOMNode, offset:Long) : Void;
	function collapsed() : Bool;
	function collapseNative(parentNode:NsIDOMNode, offset:Long) : Void;
	function collapseToEnd() : Void;
	function collapseToStart() : Void;
	function containsNode(node:NsIDOMNode, partlyContained:Bool) : Bool;
	function deleteFromDocument() : Void;
	function extend(parentNode:NsIDOMNode, offset:Long) : Void;
	function extendNative(parentNode:NsIDOMNode, offset:Long) : Void;
	function getRangeAt(index:Long) : NsIDOMRange;
	function modify(alter:DOMString, direction:DOMString, granularity:DOMString) : Void;
	function removeAllRanges() : Void;
	function removeRange(range:NsIDOMRange) : Void;
	function selectAllChildren(parentNode:NsIDOMNode) : Void;
	function selectionLanguageChange(langRTL:Bool) : Void;
	function toString() : DOMString;
}
