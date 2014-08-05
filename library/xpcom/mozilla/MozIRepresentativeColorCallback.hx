package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIRepresentativeColorCallback") extern class MozIRepresentativeColorCallback extends NsISupports
{
	function onComplete(success:Bool, ?color:ULong) : Void;
}
