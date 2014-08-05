package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIToolkit") extern class NsIToolkit extends NsISupports
{
	function Init(aThread:PRThread) : Void;
}
