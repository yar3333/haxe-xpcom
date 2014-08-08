package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXSLTProcessor") extern class NsIXSLTProcessor extends NsISupports
{
	public static inline function createInstance() : NsIXSLTProcessor return Components.Constructor("@mozilla.org/document-transformer;1", Components.interfaces.nsIXSLTProcessor);
	
	function clearParameters() : Void;
	function getParameter(namespaceURI:DOMString, localName:DOMString) : NsIVariant;
	function importStylesheet(style:NsIDOMNode) : Void;
	function removeParameter(namespaceURI:DOMString, localName:DOMString) : Void;
	function reset() : Void;
	function setParameter(namespaceURI:DOMString, localName:DOMString, value:NsIVariant) : Void;
	function transformToDocument(source:NsIDOMNode) : NsIDOMDocument;
	function transformToFragment(source:NsIDOMNode, output:NsIDOMDocument) : NsIDOMDocumentFragment;
}
