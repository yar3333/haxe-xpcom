package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIEditorMailSupport") extern class NsIEditorMailSupport extends NsISupports
{
	function getEmbeddedObjects() : NsISupportsArray;
	function insertAsCitedQuotation(aQuotedText:AString, aCitation:AString, aInsertHTML:Bool) : NsIDOMNode;
	function insertAsQuotation(aQuotedText:AString) : NsIDOMNode;
	function insertTextWithQuotations(aStringToInsert:DOMString) : Void;
	function pasteAsCitedQuotation(aCitation:AString, aSelectionType:Long) : Void;
	function pasteAsQuotation(aSelectionType:Long) : Void;
	function rewrap(aRespectNewlines:Bool) : Void;
	function stripCites() : Void;
}
