package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULDescriptionElement")
extern class NsIDOMXULDescriptionElement extends NsISupports
{
	var disabled : Bool; // attribute
	var crop : Bool; // attribute
	var value : DOMString; // attribute
}