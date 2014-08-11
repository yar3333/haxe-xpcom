package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXPathResult") extern class NsIDOMXPathResult extends NsISupports
{
	/**
	 * Used when evaluating an XPath expression; the evaluator will return the most appropriate type.
	 */
	static inline var ANY_TYPE = 0;
	/**
	 * Type is a single number.
	 */
	static inline var NUMBER_TYPE = 1;
	/**
	 * Type is a single string.
	 */
	static inline var STRING_TYPE = 2;
	/**
	 * Type is a single boolean value.
	 */
	static inline var BOOLEAN_TYPE = 3;
	/**
	 * Type is a reference to all the nodes matching the expression used in the evaluator. The nodes may not necessarily be in the same order that they appear in the document.
	 */
	static inline var UNORDERED_NODE_ITERATOR_TYPE = 4;
	/**
	 * Type is a reference to all the nodes matching the expression used in the evaluator. The nodes in the result set are in the same order that they appear in the document.
	 */
	static inline var ORDERED_NODE_ITERATOR_TYPE = 5;
	/**
	 * Type is a node-set containing snapshots of all the nodes matching the expression used in the evaluator. The nodes may not necessarily be in the same order that they appear in the document.
	 */
	static inline var UNORDERED_NODE_SNAPSHOT_TYPE = 6;
	/**
	 * Type is a node-set containing snapshots of all the nodes matching the expression used in the evaluator. The nodes in the result set are in the same order that they appear in the document.
	 */
	static inline var ORDERED_NODE_SNAPSHOT_TYPE = 7;
	/**
	 * Type is a single node that matches the expression. The node is not necessarily the first node in the document that matches the expression used in the evaluator.
	 */
	static inline var ANY_UNORDERED_NODE_TYPE = 8;
	/**
	 * Type is the first node in the document that matches the expression used in the evaluator.
	 */
	static inline var FIRST_ORDERED_NODE_TYPE = 9;
	
	/**
	 * If resultType is BOOLEAN_TYPE, the boolean value. Read only.
	 */
	var booleanValue : Bool;
	/**
	 * true if the iterator state has become invalid. For example, modifying a node invalidates the iterator. Read only.
	 */
	var invalidIteratorState : Bool;
	/**
	 * If resultType is NUMBER_TYPE, the numeric value of the XPath value. Read only.
	 */
	var numberValue : Float;
	/**
	 * The type of result; can be any of the Type constants except ANY_TYPE. Read only.
	 */
	var resultType : UShort;
	/**
	 * If resultType is ANY_UNORDERED_NODE_TYPE or FIRST_ORDERED_NODE_TYPE, a single DOM Node. Read only.
	 */
	var singleNodeValue : NsIDOMNode;
	/**
	 * If resultType is UNORDERED_NODE_SNAPSHOT_TYPE or ORDERED_NODE_SNAPSHOT_TYPE, the length of the snapshort array. Read only.
	 */
	var snapshotLength : ULong;
	/**
	 * If resultType is STRING_TYPE, the boolean value. Read only.
	 */
	var stringValue : DOMString;
	
	function iterateNext() : NsIDOMNode;
	function snapshotItem(index:ULong) : NsIDOMNode;
}
