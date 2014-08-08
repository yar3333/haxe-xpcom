package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXPathExpression") extern class NsIDOMXPathExpression extends NsISupports
{
	function evaluate(contextNode:NsIDOMNode, type:UShort, result:NsISupports) : NsISupports;
}
