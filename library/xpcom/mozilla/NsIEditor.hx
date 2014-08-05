package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIEditor") extern class NsIEditor extends NsISupports
{
	function init(doc:NsIDOMDocument, aRoot:NsIContent, aSelCon:NsISelectionController, aFlags:ULong) : Void;
	function removeAttributeOrEquivalent(element:NsIDOMElement, sourceAttrName:DOMString, aSuppressTransaction:Bool) : Void;
}
