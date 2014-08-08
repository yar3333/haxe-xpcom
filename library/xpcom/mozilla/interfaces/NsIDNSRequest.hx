package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDNSRequest") extern class NsIDNSRequest extends NsISupports
{
	function cancel() : Void;
}
