package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISupports") extern class NsISupports
{
	function AddRef() : Nsrefcnt;
	function QueryInterface(uuid:NsIIDRef, result:{value:NsQIResult}) : Void;
	function Release() : Nsrefcnt;
}
