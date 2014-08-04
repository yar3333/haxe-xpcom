package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMNodeList") extern class NsIDOMNodeList
{
	var length : Int;

	function item(index:Int) : NsIDOMNode;
}