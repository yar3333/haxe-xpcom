package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMEventGroup") extern class NsIDOMEventGroup extends NsISupports
{
	function isSameEventGroup(other:NsIDOMEventGroup) : Bool;
}
