package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXFormsModelElement") extern class NsIXFormsModelElement extends NsISupports
{
	function getInstanceDocument(instanceID:DOMString) : NsIDOMDocument;
	function rebuild() : Void;
	function recalculate() : Void;
	function refresh() : Void;
	function revalidate() : Void;
}
