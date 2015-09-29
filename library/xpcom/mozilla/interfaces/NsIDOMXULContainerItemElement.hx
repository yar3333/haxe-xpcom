package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULContainerItemElement")
extern class NsIDOMXULContainerItemElement extends NsISupports
{
	/**
	 * Returns the parent container if any.
	 */
	var parentContainer : NsIDOMXULContainerElement;
}
