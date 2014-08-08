package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXPathEvaluator") extern class NsIDOMXPathEvaluator extends NsISupports
{
	public static inline function createInstance() : NsIDOMXPathEvaluator return xpcom.Components.Constructor("@mozilla.org/dom/xpath-evaluator;1", xpcom.Components.interfaces.nsIDOMXPathEvaluator);
	
	function createExpression(expression:DOMString, resolver:NsIDOMXPathNSResolver) : NsIDOMXPathExpression;
	function createNSResolver(nodeResolver:NsIDOMNode) : NsIDOMXPathNSResolver;
	function evaluate(expression:DOMString, contextNode:NsIDOMNode, resolver:NsIDOMXPathNSResolver, type:UShort, result:NsISupports) : NsISupports;
}
