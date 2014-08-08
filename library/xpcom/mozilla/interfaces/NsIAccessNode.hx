package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessNode") extern class NsIAccessNode extends NsISupports
{
	function getChildNodeAt(childNum:Long) : NsIAccessNode;
	function getComputedStyleCSSValue(pseudoElt:DOMString, propertyName:DOMString) : NsIDOMCSSPrimitiveValue;
	function getComputedStyleValue(pseudoElt:DOMString, propertyName:DOMString) : DOMString;
	function scrollTo(aScrollType:ULong) : Void;
	function scrollToPoint(aCoordinateType:ULong, aX:Long, aY:Long) : Void;
}
