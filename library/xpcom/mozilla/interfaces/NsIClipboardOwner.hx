package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIClipboardOwner") extern class NsIClipboardOwner extends NsISupports
{
	function LosingOwnership(aTransferable:NsITransferable) : Void;
}
