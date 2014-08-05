package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIConsoleListener") extern class NsIConsoleListener extends NsISupports
{
	function observe(aMessage:NsIConsoleMessage) : Void;
}
