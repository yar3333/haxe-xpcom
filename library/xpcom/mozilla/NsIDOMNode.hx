package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMNode") extern class NsIDOMNode extends NsISupports
{
	/**
	 *  
	 */
	static inline var ELEMENT_NODE = 1;
	/**
	 *  
	 */
	static inline var ATTRIBUTE_NODE = 2;
	/**
	 *  
	 */
	static inline var TEXT_NODE = 3;
	/**
	 *  
	 */
	static inline var CDATA_SECTION_NODE = 4;
	/**
	 *  
	 */
	static inline var ENTITY_REFERENCE_NODE = 5;
	/**
	 *  
	 */
	static inline var ENTITY_NODE = 6;
	/**
	 *  
	 */
	static inline var PROCESSING_INSTRUCTION_NODE = 7;
	/**
	 *  
	 */
	static inline var COMMENT_NODE = 8;
	/**
	 *  
	 */
	static inline var DOCUMENT_NODE = 9;
	/**
	 *  
	 */
	static inline var DOCUMENT_TYPE_NODE = 10;
	/**
	 *  
	 */
	static inline var DOCUMENT_FRAGMENT_NODE = 11;
	/**
	 *  
	 */
	static inline var NOTATION_NODE = 12;
	
	/**
	 * Read only.
	 */
	var attributes : NsIDOMNamedNodeMap;
	/**
	 * Read only.
	 */
	var childNodes : NsIDOMNodeList;
	/**
	 * Read only.
	 */
	var firstChild : NsIDOMNode;
	/**
	 * Read only.
	 */
	var lastChild : NsIDOMNode;
	/**
	 * Read only.
	 */
	var localName : DOMString;
	/**
	 * Read only.
	 */
	var namespaceURI : DOMString;
	/**
	 * Read only.
	 */
	var nextSibling : NsIDOMNode;
	/**
	 * Read only.
	 */
	var nodeName : DOMString;
	/**
	 * Read only.
	 */
	var nodeType : UShort;
	var nodeValue : DOMString;
	/**
	 * Read only.
	 */
	var ownerDocument : NsIDOMDocument;
	/**
	 * Read only.
	 */
	var parentNode : NsIDOMNode;
	var prefix : DOMString;
	/**
	 * Read only.
	 */
	var previousSibling : NsIDOMNode;
	
	function appendChild(newChild:NsIDOMNode) : NsIDOMNode;
	function cloneNode(deep:Bool) : NsIDOMNode;
	function hasAttributes() : Bool;
	function hasChildNodes() : Bool;
	function insertBefore(newChild:NsIDOMNode, refChild:NsIDOMNode) : NsIDOMNode;
	function isSupported(feature:DOMString, version:DOMString) : Bool;
	function normalize() : Void;
	function removeChild(oldChild:NsIDOMNode) : NsIDOMNode;
	function replaceChild(newChild:NsIDOMNode, oldChild:NsIDOMNode) : NsIDOMNode;
}
