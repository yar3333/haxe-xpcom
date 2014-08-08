package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMEventGroup") extern class NsIDOMEventGroup extends NsISupports
{
	function isSameEventGroup(other:NsIDOMEventGroup) : Bool;
}
