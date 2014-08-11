package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessNode") extern class NsIAccessNode extends NsISupports
{
	/**
	 * The document accessible that this access node resides in. Read only. Renamed from accessibleDocument in Gecko 2.0
	 */
	var document : NsIAccessibleDocument;
	/**
	 * The DOM node this nsIAccessNode is associated with. Read only.
	 */
	var DOMNode : Node;
	/**
	 * The first nsIAccessNode child. Read only. Obsolete since Gecko 2.0
	 */
	var firstChildNode : NsIAccessNode;
	/**
	 * The innerHTML for the DOM node This is a text string of all the markup inside the DOM node, not including the start and end tag for the node. Read only.
	 */
	var innerHTML : DOMString;
	/**
	 * The language for the current DOM node, for example en, de, and so on. Read only.
	 */
	var language : DOMString;
	/**
	 * The last nsIAccessNode child. Read only. Obsolete since Gecko 2.0
	 */
	var lastChildNode : NsIAccessNode;
	/**
	 * The next nsIAccessNode sibling. Read only. Obsolete since Gecko 2.0
	 */
	var nextSiblingNode : NsIAccessNode;
	/**
	 * The number of DOM children for the DOM node, which matches the number of nsIAccessNode children for this nsIAccessNode. Read only. Obsolete since Gecko 2.0
	 */
	var numChildren : Long;
	/**
	 * The OS window handle for the window this node is being displayed in. Read only. Native code only! Obsolete since Gecko 8.0
	 */
	var ownerWindow : VoidPtr;
	/**
	 * The parent nsIAccessNode. Read only. Obsolete since Gecko 2.0
	 */
	var parentNode : NsIAccessNode;
	/**
	 * The previous nsIAccessNode sibling. Read only. Obsolete since Gecko 2.0
	 */
	var previousSiblingNode : NsIAccessNode;
	/**
	 * The root document accessible that this access node resides in. Read only.
	 */
	var rootDocument : NsIAccessibleDocument;
	/**
	 * A unique ID calculated for this DOM node, for the purposes of caching and referencing this object. Read only. Native code only!
	 */
	var uniqueID : VoidPtr;
	
	function getChildNodeAt(childNum:Long) : NsIAccessNode;
	function getComputedStyleCSSValue(pseudoElt:DOMString, propertyName:DOMString) : NsIDOMCSSPrimitiveValue;
	function getComputedStyleValue(pseudoElt:DOMString, propertyName:DOMString) : DOMString;
	function scrollTo(aScrollType:ULong) : Void;
	function scrollToPoint(aCoordinateType:ULong, aX:Long, aY:Long) : Void;
}
