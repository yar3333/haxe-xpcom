package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWorkerFactory") extern class NsIWorkerFactory extends NsISupports
{
	function newChromeWorker(aScriptURL:DOMString) : NsIWorker;
}
