package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMElement") extern class NsIDOMElement extends NsIDOMNode
{
	/**
	 * The element tag name. Read only.
	 */
	var tagName : DOMString;
	
	function getAttribute(name:DOMString) : DOMString;
	function getAttributeNode(name:DOMString) : NsIDOMAttr;
	function getAttributeNodeNS(namespaceURI:DOMString, localName:DOMString) : NsIDOMAttr;
	function getAttributeNS(namespaceURI:DOMString, localName:DOMString) : DOMString;
	function getElementsByTagName(name:DOMString) : NsIDOMNodeList;
	function getElementsByTagNameNS(namespaceURI:DOMString, localName:DOMString) : NsIDOMNodeList;
	function hasAttribute(name:DOMString) : Bool;
	function hasAttributeNS(namespaceURI:DOMString, localName:DOMString) : Bool;
	function removeAttribute(name:DOMString) : Void;
	function removeAttributeNode(oldAttr:NsIDOMAttr) : NsIDOMAttr;
	function removeAttributeNS(namespaceURI:DOMString, localName:DOMString) : Void;
	function setAttribute(name:DOMString, value:DOMString) : Void;
	function setAttributeNode(newAttr:NsIDOMAttr) : NsIDOMAttr;
	function setAttributeNodeNS(newAttr:NsIDOMAttr) : NsIDOMAttr;
	function setAttributeNS(namespaceURI:DOMString, qualifiedName:DOMString, value:DOMString) : Void;
}
