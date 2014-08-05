package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISelection3") extern class NsISelection3 extends NsISupports
{
	function modify(alter:DOMString, direction:DOMString, granularity:DOMString) : Void;
}
