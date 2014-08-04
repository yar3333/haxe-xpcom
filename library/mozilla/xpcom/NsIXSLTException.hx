package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIXSLTException") extern class NsIXSLTException extends NsIException
{
	/**
	 * The context node, may be null. Read only.
	 */
	var sourceNode : NsIDOMNode;
	/**
	 * The node in the stylesheet that triggered the exception. Read only.
	 */
	var styleNode : NsIDOMNode;
}
