package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISupports") extern class NsISupports
{
	function AddRef() : Nsrefcnt;
	function QueryInterface<T>(interface_:Class<T>) : T;
	function Release() : Nsrefcnt;
}
