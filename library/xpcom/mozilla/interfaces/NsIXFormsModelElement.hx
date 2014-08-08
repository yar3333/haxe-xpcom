package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXFormsModelElement") extern class NsIXFormsModelElement extends NsISupports
{
	function getInstanceDocument(instanceID:DOMString) : NsIDOMDocument;
	function rebuild() : Void;
	function recalculate() : Void;
	function refresh() : Void;
	function revalidate() : Void;
}
