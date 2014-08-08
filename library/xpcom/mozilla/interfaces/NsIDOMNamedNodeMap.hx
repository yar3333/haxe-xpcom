package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMNamedNodeMap") extern class NsIDOMNamedNodeMap extends NsISupports
{
	var length : Int;
	
	function getNamedItem(s:DOMString, ret:NsIDOMNode) : Int;
	function setNamedItem(node:NsIDOMNode, ret:NsIDOMNode) : Int;
	function removeNamedItem(s:DOMString, ret:NsIDOMNode) : Int;
	function item(index:Int, ret:NsIDOMNode) : Int;
	function getNamedItemNS(s:DOMString, s2:DOMString, ret:NsIDOMNode) : Int;
	function setNamedItemNS(node:NsIDOMNode, ret:NsIDOMNode) : Int;
	function removeNamedItemNS(s:DOMString, s2:DOMString, ret:NsIDOMNode) : Int;
}