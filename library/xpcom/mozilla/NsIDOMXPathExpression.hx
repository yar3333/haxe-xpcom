package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMXPathExpression") extern class NsIDOMXPathExpression extends NsISupports
{
	function evaluate(contextNode:NsIDOMNode, type:UShort, result:NsISupports) : NsISupports;
}
