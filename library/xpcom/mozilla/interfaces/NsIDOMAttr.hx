package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMAttr") extern class NsIDOMAttr extends NsIDOMNode
{
	var name : DOMString;
	var specified : Bool;
	var value : DOMString;
	var ownerElement : NsIDOMElement;
	var isId : Bool;
}