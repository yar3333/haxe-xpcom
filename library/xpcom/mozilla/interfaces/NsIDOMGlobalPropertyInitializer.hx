package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMGlobalPropertyInitializer") extern class NsIDOMGlobalPropertyInitializer extends NsISupports
{
	function init(window:NsIDOMWindow) : JSVal;
}
