package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMNode") extern class NsIDOMNode extends NsISupports
{
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
}
