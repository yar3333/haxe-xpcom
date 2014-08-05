package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWorkerFactory") extern class NsIWorkerFactory extends NsISupports
{
	function newChromeWorker(aScriptURL:DOMString) : NsIWorker;
}
