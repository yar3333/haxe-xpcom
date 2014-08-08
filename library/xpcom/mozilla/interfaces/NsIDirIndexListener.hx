package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDirIndexListener") extern class NsIDirIndexListener extends NsISupports
{
	function onIndexAvailable(aRequest:NsIRequest, aCtxt:NsISupports, aIndex:NsIDirIndex) : Void;
	function onInformationAvailable(aRequest:NsIRequest, aCtxt:NsISupports, aInfo:AString) : Void;
}
