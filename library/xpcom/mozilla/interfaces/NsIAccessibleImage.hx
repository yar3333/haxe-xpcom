package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleImage") extern class NsIAccessibleImage extends NsISupports
{
	function getImagePosition(coordType:ULong, x:{value:Long}, y:{value:Long}) : Void;
	function getImageSize(width:{value:Long}, height:{value:Long}) : Void;
}
