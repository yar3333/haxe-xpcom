package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMGlobalPropertyInitializer") extern class NsIDOMGlobalPropertyInitializer extends NsISupports
{
	function init(window:NsIDOMWindow) : JSVal;
}
