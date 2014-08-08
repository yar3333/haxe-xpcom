package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIRepresentativeColorCallback") extern class MozIRepresentativeColorCallback extends NsISupports
{
	function onComplete(success:Bool, ?color:ULong) : Void;
}
