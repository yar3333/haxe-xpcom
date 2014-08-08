package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIEditor") extern class NsIEditor extends NsISupports
{
	function init(doc:NsIDOMDocument, aRoot:NsIContent, aSelCon:NsISelectionController, aFlags:ULong) : Void;
	function removeAttributeOrEquivalent(element:NsIDOMElement, sourceAttrName:DOMString, aSuppressTransaction:Bool) : Void;
}
