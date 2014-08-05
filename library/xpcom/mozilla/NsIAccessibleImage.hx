package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleImage") extern class NsIAccessibleImage extends NsISupports
{
	function getImagePosition(coordType:ULong, x:Long, y:Long) : Void;
	function getImageSize(width:Long, height:Long) : Void;
}
