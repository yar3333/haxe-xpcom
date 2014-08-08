package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMFontFaceList") extern class NsIDOMFontFaceList extends NsISupports
{
	/**
	 * The number of items in the list. Read only.
	 */
	var length : ULong;
	
	function item(index:ULong) : NsIDOMFontFace;
}
