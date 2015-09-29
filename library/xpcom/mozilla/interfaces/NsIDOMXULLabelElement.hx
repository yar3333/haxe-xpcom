package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULLabelElement")
extern class NsIDOMXULLabelElement extends NsIDOMXULDescriptionElement
{
	var accessKey : DOMString; // attribute
	var control : DOMString; // attribute
}