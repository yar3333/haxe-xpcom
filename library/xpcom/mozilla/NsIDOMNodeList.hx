package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMNodeList") extern class NsIDOMNodeList
{
	var length : Int;

	function item(index:Int) : NsIDOMNode;
}