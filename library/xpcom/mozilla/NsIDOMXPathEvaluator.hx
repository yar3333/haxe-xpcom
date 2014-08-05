package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIDOMXPathEvaluator") extern class NsIDOMXPathEvaluator extends NsISupports
{
	public static inline function createInstance() : NsIDOMXPathEvaluator return Components.Constructor("@mozilla.org/dom/xpath-evaluator;1", Components.interfaces.nsIDOMXPathEvaluator);
	
	function createExpression(expression:DOMString, resolver:NsIDOMXPathNSResolver) : NsIDOMXPathExpression;
	function createNSResolver(nodeResolver:NsIDOMNode) : NsIDOMXPathNSResolver;
	function evaluate(expression:DOMString, contextNode:NsIDOMNode, resolver:NsIDOMXPathNSResolver, type:UShort, result:NsISupports) : NsISupports;
}
