package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXSLTException") extern class NsIXSLTException extends NsIException
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
