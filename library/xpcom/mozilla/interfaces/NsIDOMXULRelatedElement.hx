package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULRelatedElement")
extern class NsIDOMXULRelatedElement extends NsISupports
{
	/**
	 * Retrun an element associated with the given element. It's implemented
	 * by container elements having relation between their items. For example,
	 * this interface is implemented by XUL tabs and XUL tabpanels elements
	 * and used to get XUL tab element by linked tab panel and vice versa.
	 */
	function getRelatedElement(aElement:NsIDOMNode) : NsIDOMNode;
}