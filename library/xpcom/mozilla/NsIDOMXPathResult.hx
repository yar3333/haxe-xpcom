package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMXPathResult") extern class NsIDOMXPathResult extends NsISupports
{
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
