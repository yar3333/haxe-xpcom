package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWorkerMessagePort") extern class NsIWorkerMessagePort extends NsISupports
{
	function postMessage(aMessage:DOMString) : Void;
}
