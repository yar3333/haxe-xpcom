package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITreeContentView") extern class NsITreeContentView extends NsISupports
{
	/**
	 * The element in the DOM which this view uses as root content. Read only. Obsolete since Gecko 1.8
	 */
	var root : NsIDOMElement;
	
	function getIndexOfItem(item:NsIDOMElement) : Long;
	function getItemAtIndex(index:Long) : NsIDOMElement;
}
