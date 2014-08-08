package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMStorageItem") extern class NsIDOMStorageItem extends NsISupports
{
	/**
	 * If true, the item was stored for an HTTPS page. Note: All items, regardless of whether they were stored for an HTTP page or an HTTPS page, are visible from HTTPS pages. However, HTTP pages can only see items stored from HTTP pages, and will not see items stored from HTTPS pages. As such, this attribute is irrelevant for storage that is bound to an origin.
	 */
	var secure : Bool;
	/**
	 * The value associated with the item.
	 */
	var value : DOMString;
}
